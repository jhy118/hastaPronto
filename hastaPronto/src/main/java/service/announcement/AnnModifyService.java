package service.announcement;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.AnnCommand;
import command.FileInfo;
import model.DTO.AnnDTO;
import model.DTO.AuthInfo;
import repository.announcement.AnnRepository;

@Service
@Component
public class AnnModifyService {
   @Autowired
   AnnRepository annRepository;
   public void execute(AnnCommand annCommand, HttpSession session) {
	  AnnDTO annDTO = new AnnDTO();
	  annDTO.setAnnNo(annCommand.getAnnNo());
	  List<AnnDTO> list = annRepository.getAnnList(annDTO);
	  
	  String path1 = "WEB-INF/view/ann/upload";
      String filePath =
    		  session.getServletContext().getRealPath(path1);
      
      
      annDTO.setAnnSubject(annCommand.getAnnSubject());
      annDTO.setAnnContent(annCommand.getAnnContent()); 
      AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
      annDTO.setEmpId(authInfo.getLoginId());
      
      //삭제할 파일 정보
      List<FileInfo> list1 =
    		  (List<FileInfo>)session.getAttribute("fileList");
      if(list1 != null) {
    	  for(FileInfo fi : list1) {
    		  String org = fi.getAnnOriginalFileName();
    		  String sto = fi.getAnnStoredFileName();
    		  String fsize = fi.getAnnFileSize();
    		  list.get(0).setAnnOriginalFileName(
    				  list.get(0).getAnnOriginalFileName()
    				  .replace(org + "`", ""));
    		  list.get(0).setAnnStoredFileName(
    				  list.get(0).getAnnStoredFileName()
    				  .replace(sto + "`", ""));
    		  list.get(0).setAnnFileSize(
    				  list.get(0).getAnnFileSize()
    				  .replace(fsize + "`", ""));
    		  
    		  //실제 디렉터리에서 파일 삭제
    		  File file = new File(filePath + "/" + sto);
    		  if(file.exists()) file.delete();
    	  }
    	  session.removeAttribute("fileList");
      }
      
      
      //파일을 추가하는 경우
      if(annCommand.getReport() != null) {
    	  for(MultipartFile mf : annCommand.getReport()) {
    		  String original = mf.getOriginalFilename();
    		  String originalFileExtension =
    				  original.substring(original.lastIndexOf("."));
    		  String store = UUID.randomUUID().toString()
    				  .replace("-", "") 
    				  + originalFileExtension;
    		  String fileSize = Long.toString(mf.getSize());
    		  list.get(0).setAnnOriginalFileName(
    				  list.get(0).getAnnOriginalFileName()+original+"`");
    		  list.get(0).setAnnStoredFileName(
    				  list.get(0).getAnnStoredFileName()+store+"`");
    		  list.get(0).setAnnFileSize(
    				  list.get(0).getAnnFileSize()+fileSize+"`");
    		  File file = new File(filePath + "/" + store);
    		  try {
    			  mf.transferTo(file);
    		  } catch (Exception e) {
    			  e.printStackTrace();
    		  }
    	  }
      }
      annDTO.setAnnOriginalFileName(list.get(0)
    		  .getAnnOriginalFileName());
      annDTO.setAnnStoredFileName(list.get(0)
    		  .getAnnStoredFileName());      
      annDTO.setAnnFileSize(list.get(0).getAnnFileSize());
      annRepository.updateAnn(annDTO);
   }
}