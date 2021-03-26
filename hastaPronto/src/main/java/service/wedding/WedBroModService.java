package service.wedding;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.WedCommand;
import model.DTO.WedDTO;
import repository.wedding.WedRepository;

@Service
@Component
public class WedBroModService {
	@Autowired
	WedRepository wedRepository;
	public void execute(WedCommand wedCommand, HttpSession session) {
		WedDTO wedDTO = new WedDTO();
		wedDTO.setWedNo(wedCommand.getWedNo());
		
		//session에 저장된 파일명을 DB에 있는 정보로부터 삭제하기 위해
		wedDTO = (WedDTO)wedRepository.getWedList(wedDTO).get(0);
		List<String> list = (List<String>)session.getAttribute("imgList");
		
		String path = "WEB-INF/view/wedding/upload";
		String filePath = 
				session.getServletContext().getRealPath(path);
		
		if(list != null) {
			for(String img : list) {
				wedDTO.setWedFile(wedDTO.getWedFile().replace(img+"`", ""));
				File file = new File(filePath+"/"+img);
				if(file.exists()) file.delete();
			}
			session.removeAttribute("imgList");
		}
		//wedDTO.getWedFile()가 null일 때 파일명 앞에
		String wedFile = "";
		if(wedDTO.getWedFile() != null) {
			wedFile = wedDTO.getWedFile();
		}
		//추가된 이미지가 있는지 확인
		if(wedCommand.getWedFile() != null) {
			for(MultipartFile mf : wedCommand.getWedFile()) {
				String original = mf.getOriginalFilename();
				if(original.equals(""))break;
				String originalFileExtension =
	    				  original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString()
	    				  .replace("-", "")+originalFileExtension;
				wedFile = wedFile+store +"`";
				File file = new File(filePath +"/" + store);
				try {
					mf.transferTo(file);
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}
		}
		wedDTO.setWedFile(wedFile);
		wedDTO.setWedName(wedCommand.getWedName());
		wedDTO.setWedChar(wedCommand.getWedChar());
		wedDTO.setWedContent(wedCommand.getWedContent());
		wedDTO.setWedLocation(wedCommand.getWedLocation());
		wedDTO.setWedNum(wedCommand.getWedNum());
		wedRepository.updateWedBro(wedDTO);
	}

}
