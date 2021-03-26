package service.resmenu;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.ResmenuCommand;
import model.DTO.ResmenuDTO;
import repository.resmenu.ResmenuRepository;

@Service
public class ResmenuRegistService {
	@Autowired
	ResmenuRepository resmenuRepository;
	public void execute(ResmenuCommand resmenuCommand, HttpSession session) {
		ResmenuDTO resmenuDTO = new ResmenuDTO();
		resmenuDTO.setRtMenu(resmenuCommand.getRtMenu());
		resmenuDTO.setRtMenuChar(resmenuCommand.getRtMenuChar());
		resmenuDTO.setRtMenuCon(resmenuCommand.getRtMenuCon());
		String path = "WEB-INF/view/resmenu/upload";
		String filePath = session.getServletContext().getRealPath(path);
		String imageName = "";
		try {
			for(MultipartFile mf : resmenuCommand.getRtMenuImage()) {
				String originalFileName = mf.getOriginalFilename();
				String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "")+originalFileExtension;
				imageName += store + "`";
				File file = new File(filePath + "\\" + store);
				mf.transferTo(file);
			}
			}catch (Exception e) {
	  	 }
		resmenuDTO.setRtMenuImage(imageName);
		resmenuDTO.setRtNo(resmenuCommand.getRtNo());
		resmenuRepository.insertResmenu(resmenuDTO);
	}
}
