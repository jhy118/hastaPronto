package service.wedRv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedCsDTO;
import model.DTO.WedDTO;
import model.DTO.WedResDTO;
import repository.wedCs.WedCsRepository;
import repository.wedRt.WedRtRepository;
import repository.wedding.WedRepository;

@Service
@Component
public class WedRvFormService {
	@Autowired
	WedRepository wedRepository;
	@Autowired
	WedRtRepository wedRtRepository;
//	@Autowired
//	WedCsRepository wedCsRepository;
	public void execute(Model model) {
		WedDTO weddingDTO = new WedDTO();
		List<WedDTO> wedList = wedRepository.getWedList(weddingDTO);
		model.addAttribute("wedList", wedList);
		
		WedResDTO wedResDTO = new WedResDTO();
		List<WedResDTO> wedRtList = wedRtRepository.getWedRtList(wedResDTO);
		model.addAttribute("wedRtList", wedRtList);
//		
//		WedCsDTO wedCsDTO = new WedCsDTO();
//		List<WedCsDTO> wedCsList = wedCsRepository.getWedCsList(wedCsDTO);
//		model.addAttribute("wedCsList", wedCsList);
		
	}

}
