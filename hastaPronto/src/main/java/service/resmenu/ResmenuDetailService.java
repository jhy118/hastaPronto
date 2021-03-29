package service.resmenu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.ResmenuDTO;
import repository.resmenu.ResmenuRepository;

public class ResmenuDetailService {
	@Autowired
	ResmenuRepository resmenuRepository;
	public void execute(Model model, String rtMenuNo) {
		ResmenuDTO resmenuDTO = new ResmenuDTO();
		resmenuDTO.setRtMenuNo(rtMenuNo);
		resmenuDTO = resmenuRepository.selectResmenu(resmenuDTO).get(0);
		model.addAttribute("resmenu", resmenuDTO);
		
	}
}



