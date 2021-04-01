package service.wedPay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedDTO;
import model.DTO.WedResDTO;
import model.DTO.WedRvDTO;
import repository.wedRt.WedRtRepository;
import repository.wedRv.WedRvRepository;
import repository.wedding.WedRepository;

@Service
@Component
public class WedPayFormService {
	@Autowired
	WedRepository wedRepository;
	@Autowired
	WedRtRepository wedRtRepository;
	@Autowired
	WedRvRepository wedRvRepository;
	public void execute(Model model) {
		WedDTO weddingDTO = new WedDTO();
		List<WedDTO> wedList = wedRepository.getWedList(weddingDTO);
		model.addAttribute("wedList", wedList.get(0));
		
		WedResDTO wedResDTO = new WedResDTO();
		List<WedResDTO> wedRtList = wedRtRepository.getWedRtList(wedResDTO);
		model.addAttribute("wedRtList", wedRtList.get(0));
		
		WedRvDTO wedRvDTO = new WedRvDTO();
		List<WedRvDTO> wedRvList = wedRvRepository.getWedRvList(wedRvDTO);
		model.addAttribute("wedRvList", wedRvList.get(0));
		
	}
	
}
