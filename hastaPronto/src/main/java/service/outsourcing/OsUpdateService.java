package service.outsourcing;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import command.FileInfo;
import command.OsCommand;
import model.DTO.AuthInfo;
import model.DTO.OsDTO;
import model.DTO.OsFileDTO;
import repository.outsourcing.OsRepository;

public class OsUpdateService {
	@Autowired
	OsRepository osRepository;

	public void execute(OsCommand osCommand, HttpSession session) {
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		OsDTO osDTO = new OsDTO();
		osDTO.setOsNo(osCommand.getOsNo());
		List<OsDTO> list = osRepository.getOsList(osDTO);
		osDTO.setOsName(osCommand.getOsName());
		osDTO.setBsLicense(osCommand.getBsLicense());
		osDTO.setOsAddr(osCommand.getOsAddr());
		osDTO.setOsBusinessName(osCommand.getOsBusinessName());
		osDTO.setRepName(osCommand.getRepName());
		osDTO.setOsTel(osCommand.getOsTel());
		osDTO.setOsEmail(osCommand.getOsEmail());

		String path = "WEB-INF/view/outsourcing/osFile";
		String osfilePath = session.getServletContext().getRealPath(path);

		OsFileDTO osFileDTO = new OsFileDTO();
		osFileDTO.setOsFilenum(osCommand.getOsNo());
		List<OsFileDTO> lists = osRepository.getOsFileList(osFileDTO);
		List<OsFileDTO> lists2 = (List<OsFileDTO>) session.getAttribute("lists");
		// 삭제할 파일 정보
		if (lists.get(0).getOsOriginalfilename() != null) {
			for (OsFileDTO osf : lists2) {
				String org = osf.getOsOriginalfilename();
				String sto = osf.getOsStorefilename();
				String osfilesize = osf.getOsFilesize();
				lists.get(0).setOsOriginalfilename(lists.get(0).getOsOriginalfilename().replace(org + "`", ""));
				lists.get(0).setOsStorefilename(lists.get(0).getOsStorefilename().replace(sto + "`", ""));
				lists.get(0).setOsFilesize(lists.get(0).getOsFilesize().replace(osfilesize + "`", ""));

				// 실제 디렉터리에서 파일 삭제
				File file = new File(osfilePath + "/" + sto);
				if (file.exists())
					file.delete();
			}
			session.removeAttribute("fileList");
		}

		// 파일을 추가하는 경우
		if (osCommand.getReport() != null) {
			for (MultipartFile osmf : osCommand.getReport()) {
				String original = osmf.getOriginalFilename();
				if (original.equals(""))
					break;
				String originalFileExtension = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
				String fileSize = Long.toString(osmf.getSize());
				lists.get(0).setOsOriginalfilename(lists.get(0).getOsOriginalfilename() + original + "`");
				lists.get(0).setOsStorefilename(lists.get(0).getOsStorefilename() + store + "`");
				lists.get(0).setOsFilesize(lists.get(0).getOsFilesize() + fileSize + "`");
				File osFile = new File(osfilePath + "/" + store);
				try {
					osmf.transferTo(osFile);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}

		osFileDTO.setOsOriginalfilename(lists.get(0).getOsOriginalfilename());
		osFileDTO.setOsStorefilename(lists.get(0).getOsStorefilename());
		osFileDTO.setOsFilesize(lists.get(0).getOsFilesize());
		osRepository.osUpdate(osDTO);
		osRepository.osFileUpdate(osFileDTO);

	}

}
