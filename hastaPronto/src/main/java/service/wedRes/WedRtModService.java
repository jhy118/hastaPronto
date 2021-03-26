package service.wedRes;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.WedResCommand;
import model.DTO.WedResDTO;
import repository.wedRt.WedRtRepository;

@Service
@Component
public class WedRtModService {
	@Autowired
	WedRtRepository wedRtRepository;
	public void execute(WedResCommand wedResCommand, HttpSession session) {
		WedResDTO wedResDTO = new WedResDTO();
		wedResDTO.setWedRtNo(wedResCommand.getWedRtNo());
		
		//session에 저장된 파일명을 DB에 있는 정보로부터 삭제하기 위해
		wedResDTO = (WedResDTO)wedRtRepository.getWedRtList(wedResDTO).get(0);
		List<String> list = (List<String>)session.getAttribute("imgList");
		
		String path = "WEB-INF/view/wedRes/upload";
		String filePath = 
				session.getServletContext().getRealPath(path);
		
		if(list != null) {
			for(String img : list) {
				wedResDTO.setWedRtFile(wedResDTO.getWedRtFile().replace(img+"`", ""));
				File file = new File(filePath+"/"+img);
				if(file.exists()) file.delete();
			}
			session.removeAttribute("imgList");
		}
		//wedDTO.getWedFile()가 null일 때 파일명 앞에
		String wedRtFile = "";
		if(wedResDTO.getWedRtFile() != null) {
			wedRtFile = wedResDTO.getWedRtFile();
		}
		//추가된 이미지가 있는지 확인
		if(wedResCommand.getWedRtFile() != null) {
			for(MultipartFile mf : wedResCommand.getWedRtFile()) {
				String original = mf.getOriginalFilename();
				if(original.equals(""))break;
				String originalFileExtension =
	    				  original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString()
	    				  .replace("-", "")+originalFileExtension;
				wedRtFile = wedRtFile+store +"`";
				File file = new File(filePath +"/" + store);
				try {
					mf.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		wedResDTO.setWedRtFile(wedRtFile);
		wedResDTO.setWedRtChar(wedResCommand.getWedRtChar());
		wedResDTO.setWedRtLocation(wedResCommand.getWedRtLocation());
		wedResDTO.setWedRtMname(wedResCommand.getWedRtMname());
		wedResDTO.setWedRtName(wedResCommand.getWedRtName());
		wedResDTO.setWedRtNum(wedResCommand.getWedRtNum());
		wedRtRepository.updateWedRt(wedResDTO);
	}

}
