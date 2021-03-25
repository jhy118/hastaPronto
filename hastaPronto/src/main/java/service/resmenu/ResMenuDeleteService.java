package service.resmenu;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.DTO.ResmenuDTO;
import repository.resmenu.ResmenuRepository;


@Service
public class ResMenuDeleteService {
	@Autowired
	ResmenuRepository resmenuRepository;
	public void execute(String rtMenuNo, HttpSession session) {
		ResmenuDTO resmenuDTO = new ResmenuDTO();
		resmenuDTO.setRtMenuNo(rtMenuNo);
		
		resmenuDTO = resmenuRepository.selectResmenu(resmenuDTO).get(0);
		String filepath = session.getServletContext().getRealPath("WEB-INF/view/resmenu/upload");
		
		if(resmenuDTO.getRtMenuImage() != null) {
			String [] store = resmenuDTO.getRtMenuImage().split("`");
			for(String f : store) {
				File file = new File(filepath + "/" + f);
				file.delete();
			}
		}
		resmenuRepository.deleteResmenu(rtMenuNo); 
	}
}
