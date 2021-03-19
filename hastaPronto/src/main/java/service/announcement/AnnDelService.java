package service.announcement;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.DTO.AnnDTO;
import repository.announcement.AnnRepository;

@Service
@Component
public class AnnDelService {
   @Autowired
   AnnRepository annRepository;
   public void execute(String annNo, HttpSession session) {
	  //파일삭제시작
	  String path1 = "WEB-INF/view/ann/upload";
      String filePath = session.getServletContext().getRealPath(path1);
	  AnnDTO annDTO = new AnnDTO();
	  annDTO.setAnnNo(annNo);
	  List<AnnDTO> list = annRepository.getAnnList(annDTO);
	  if(list.get(0).getAnnStoredFileName() != null) {
		  String [] store = list.get(0).getAnnStoredFileName().split("`");
		  for(String f : store) {
			  File file = new File(filePath + "/" + f);
			  file.delete();
		  }
	  }
	  annRepository.deleteAnn(annNo);
   }
   
}