package service.respay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.RespayDTO;
import repository.respay.RespayRepository;

public class RespayListService {
	@Autowired
	RespayRepository respayRepository;
	public void execute(String rtRvNo, Model model) {
		RespayDTO respayDTO = new RespayDTO();
		respayDTO.setRtRvNo(rtRvNo);
		
		respayDTO = respayRepository.selectRespay(respayDTO);
		Integer count = respayDTO.getResmenuDTO().size() - 1;
		model.addAttribute("respay", respayDTO);
		model.addAttribute("count", count);
	}
}
