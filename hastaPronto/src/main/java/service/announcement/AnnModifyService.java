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
import repository.announcement.AnnRepository;

@Service
@Component
public class AnnModifyService {
   @Autowired
   AnnRepository annRepository;
   public void execute(AnnCommand annCommand, HttpSession session) {
	  AnnDTO annDTO = new AnnDTO();
	  annDTO.setAnnNo(annCommand.getAnnNo());
	 
	  
	  annDTO = (AnnDTO)annRepository.getAnnList(annDTO).get(0);
	  List<String> list = (List<String>)session.getAttribute("imgList");
	  List<AnnDTO> list1 = annRepository.getAnnList(annDTO);
	  
	  
	  String path1 = "WEB-INF/view/ann/upload";
      String filePath =
    		  session.getServletContext().getRealPath(path1);
      
      if(list != null) {
    	  for(String img : list) {
    		  annDTO.setAnnImg(annDTO.getAnnImg().replace(img+"`", ""));
    		  File file = new File(filePath+"/"+img);
    		  if(file.exists()) file.delete();
    	  }
    	  session.removeAttribute("imgList");
      }
      //annDTO.getAnnImg()가 null일 때 파일명 앞에
      String annImage = "";
      if(annDTO.getAnnImg() != null) {
    	  annImage = annDTO.getAnnImg();
      }
      //추가된 이미지가 있는지 확인
      if(annCommand.getAnnImg() != null) {
    	  for(MultipartFile mf : annCommand.getAnnImg()) {
    		  String original = mf.getOriginalFilename();
    		  if(original.equals(""))break;
    		  String originalFileExtension =
    				  original.substring(original.lastIndexOf("."));
    		  String store = UUID.randomUUID().toString()
    				  .replace("-", "")+originalFileExtension;
    		  annDTO.setAnnImg(annImage+store+"`");
    		  
    		  File file = new File(filePath + "/" + store);
    		  try {
				mf.transferTo(file);
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    	  }
      }
      annDTO.setAnnSubject(annCommand.getAnnSubject());
      annDTO.setAnnContent(annCommand.getAnnContent());
      
      
      //삭제할 파일 정보
      List<FileInfo> list2 =
    		  (List<FileInfo>)session.getAttribute("fileList");
      if(list2 != null) {
    	  for(FileInfo fi : list2) {
    		  String org = fi.getOriginalFileName();
    		  String sto = fi.getStoredFileName();
    		  String fsize = fi.getFileSize();
    		  list1.get(0).setAnnOriginalFileName(
    				  list1.get(0).getAnnOriginalFileName()
    				  .replace(org + "`", ""));
    		  list1.get(0).setAnnStoredFileName(
    				  list1.get(0).getAnnStoredFileName()
    				  .replace(sto + "`", ""));
    		  list1.get(0).setAnnFileSize(
    				  list1.get(0).getAnnFileSize()
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
    		  if(original.equals(""))break;
    		  String originalFileExtension =
    				  original.substring(original.lastIndexOf("."));
    		  String store = UUID.randomUUID().toString()
    				  .replace("-", "") 
    				  + originalFileExtension;
    		  String fileSize = Long.toString(mf.getSize());
    		  list1.get(0).setAnnOriginalFileName(
    				  list1.get(0).getAnnOriginalFileName()+original+"`");
    		  list1.get(0).setAnnStoredFileName(
    				  list1.get(0).getAnnStoredFileName()+store+"`");
    		  list1.get(0).setAnnFileSize(
    				  list1.get(0).getAnnFileSize()+fileSize+"`");
    		  File file = new File(filePath + "/" + store);
    		  try {
    			  mf.transferTo(file);
    		  } catch (Exception e) {
    			  e.printStackTrace();
    		  }
    	  }
      }
      annDTO.setAnnOriginalFileName(list1.get(0)
    		  .getAnnOriginalFileName());
      annDTO.setAnnStoredFileName(list1.get(0)
    		  .getAnnStoredFileName());      
      annDTO.setAnnFileSize(list1.get(0).getAnnFileSize());
      annRepository.updateAnn(annDTO);
   }
}