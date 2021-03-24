package service.res;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.DTO.ResDTO;
import repository.res.ResRepository;

@Service
public class ResDeleteService {
	@Autowired
	ResRepository resRepository;
	public void execute(String rtNo, HttpSession session) {
		ResDTO dto = new ResDTO();
		dto.setRtNo(rtNo);
		
		dto = resRepository.selectRes(dto).get(0);
		String filePath = session.getServletContext().getRealPath("WEB-INF/view/res/upload");
		
		if(dto.getRtFile() != null) {
		String [] store = dto.getRtFile().split("`");
		for(String f : store) {
			File file = new File(filePath + "/" + f);
			file.delete();
			}
		}
		resRepository.deleteRes(rtNo);
	}
}
