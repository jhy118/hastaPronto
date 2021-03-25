package service.wedding;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.WedCommand;
import model.DTO.AuthInfo;
import model.DTO.WedDTO;
import repository.wedding.WedRepository;

@Service
@Component
public class WedService {
	@Autowired
	WedRepository wedRepository;
	public void execute(WedCommand wedCommand, HttpSession session) {
		WedDTO wedDTO = new WedDTO();
		wedDTO.setWedChar(wedCommand.getWedChar());
		wedDTO.setWedContent(wedCommand.getWedContent());
		wedDTO.setWedName(wedCommand.getWedName());
		wedDTO.setWedNo(wedCommand.getWedNo());
		wedDTO.setWedNum(wedCommand.getWedNum());
		wedDTO.setWedLocation(wedCommand.getWedLocation());
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		wedDTO.setEmpId(authInfo.getLoginId());
		
		String path = "WEB-INF/view/wedding/upload";
		String filePath = session.getServletContext().getRealPath(path);
		String wedFile = "";
		for (MultipartFile mf : wedCommand.getWedFile()) {
			String original = mf.getOriginalFilename();
			if(original.equals(""))break;
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "") + originalFileExtension;
			wedFile += store + "`";
			File file = new File(filePath + "\\" + store);
			try {
				mf.transferTo(file);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		}
		wedDTO.setWedFile(wedFile);
		wedRepository.insertWed(wedDTO);
	}

}
