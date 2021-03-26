package service.wedRes;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.WedResCommand;
import model.DTO.AuthInfo;
import model.DTO.WedResDTO;
import repository.wedRt.WedRtRepository;

@Service
@Component
public class WedResService {
	@Autowired
	WedRtRepository wedRtRepository;
	public void execute(WedResCommand wedResCommand, HttpSession session) {
		WedResDTO wedResDTO = new WedResDTO();
		wedResDTO.setWedRtNo(wedResCommand.getWedRtNo());
		wedResDTO.setWedRtName(wedResCommand.getWedRtName());
		wedResDTO.setWedRtChar(wedResCommand.getWedRtChar());
		wedResDTO.setWedRtMname(wedResCommand.getWedRtMname());
		wedResDTO.setWedRtLocation(wedResCommand.getWedRtLocation());
		wedResDTO.setWedRtNum(wedResCommand.getWedRtNum());
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		wedResDTO.setEmpId(authInfo.getLoginId());
		
		String path = "WEB-INF/view/wedRes/upload";
		String filePath = session.getServletContext().getRealPath(path);
		String wedRtFile = "";
		for (MultipartFile mf : wedResCommand.getWedRtFile()) {
			String original = mf.getOriginalFilename();
			if(original.equals(""))break;
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
			wedRtFile += store + "`";
			File file = new File(filePath + "\\" + store);
			try {
				mf.transferTo(file);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		wedResDTO.setWedRtFile(wedRtFile);
		wedRtRepository.insertWedRt(wedResDTO);
	}

}
