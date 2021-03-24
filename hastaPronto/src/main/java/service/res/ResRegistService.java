package service.res;


import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.ResCommand;
import model.DTO.ResDTO;
import repository.res.ResRepository;

@Service
public class ResRegistService {
	@Autowired
	ResRepository resRepository;
	public void execute(ResCommand resCommand, HttpSession session) {
		ResDTO resDTO = new ResDTO();
		resDTO.setRtName(resCommand.getRtName());
		resDTO.setRtContent(resCommand.getRtContent());
		String path = "WEB-INF/view/res/upload";
		String filePath = session.getServletContext().getRealPath(path);
		String imageName = "";
		try {
			for(MultipartFile mf : resCommand.getRtFile()){
				String originalFileName = mf.getOriginalFilename();
				String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "")+originalFileExtension;
				imageName += store + "`";
				File file = new File(filePath + "\\" + store);
				mf.transferTo(file);
			}
			}catch (Exception e) {
	  	 }
		resDTO.setRtFile(imageName);
		resRepository.insertRes(resDTO);
			
		
	}
}
