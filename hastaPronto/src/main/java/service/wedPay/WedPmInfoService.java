package service.wedPay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedDTO;
import model.DTO.WedPayDTO;
import model.DTO.WedResDTO;
import repository.wedPay.WedPayRepository;
import repository.wedRt.WedRtRepository;
import repository.wedding.WedRepository;

@Service
@Component
public class WedPmInfoService {
	@Autowired
	WedPayRepository wedPayRepository;
	@Autowired
	WedRtRepository wedRtRepository;
	@Autowired
	WedRepository wedRepository;
	public void execute(Model model) {
		WedPayDTO wedPayDTO = new WedPayDTO();
		List<WedPayDTO> list = wedPayRepository.getWedPayList(wedPayDTO);
		model.addAttribute("list", list.get(0));
		
		WedResDTO wedRtDTO = new WedResDTO();
		List<WedResDTO> wedRtList = wedRtRepository.getWedRtList(wedRtDTO);
		model.addAttribute("wedRtList", wedRtList.get(0));
		
		WedDTO wedDTO = new WedDTO();
		List<WedDTO> wedList = wedRepository.getWedList(wedDTO);
		model.addAttribute("wedList", wedList.get(0));
	}

}
