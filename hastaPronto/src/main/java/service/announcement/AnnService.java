package service.announcement;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.AnnCommand;
import model.DTO.AnnDTO;
import model.DTO.AuthInfo;
import repository.announcement.AnnRepository;

@Service
@Component
public class AnnService {
   @Autowired
   AnnRepository annRepository;
   public void execute(AnnCommand annCommand, HttpSession session) {
      AnnDTO annDTO = new AnnDTO();
      annDTO.setAnnContent(annCommand.getAnnContent());
      annDTO.setAnnSubject(annCommand.getAnnSubject());
      AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");      
      annDTO.setEmpId(authInfo.getLoginId());
      String path = "WEB-INF/view/ann/upload";
      String filePath = session.getServletContext().getRealPath(path);
      String originalFileNames = "";
      String storedFileNames = "";
      String fileSizes = "";
	  try {
		  for(MultipartFile mf : annCommand.getReport()) {
	    	  String originalFileName = mf.getOriginalFilename();
	    	  String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
	    	  String store = UUID.randomUUID().toString().replace("-", "")+originalFileExtension;
	    	  String fileSize = Long.toString(mf.getSize());
	    	  originalFileNames += originalFileName + "`";
	    	  storedFileNames += store + "`";
	    	  fileSizes += fileSize + "`";
	    	  File file = new File(filePath + "\\" + store);
	    	  mf.transferTo(file);
		  	  } 
	  	  }catch (Exception e) {
	  	  }
		  annDTO.setAnnOriginalFileName(originalFileNames);
		  annDTO.setAnnStoredFileName(storedFileNames);
		  annDTO.setAnnFileSize(fileSizes);
		  annRepository.insertAnn(annDTO);
	  }	 
}