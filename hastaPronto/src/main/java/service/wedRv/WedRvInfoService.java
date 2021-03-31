package service.wedRv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedCsDTO;
import model.DTO.WedDTO;
import model.DTO.WedResDTO;
import model.DTO.WedRvDTO;
import repository.wedCs.WedCsRepository;
import repository.wedRt.WedRtRepository;
import repository.wedRv.WedRvRepository;
import repository.wedding.WedRepository;

@Service
@Component
public class WedRvInfoService {
	@Autowired
	WedRvRepository wedRvRepository;
	@Autowired
	WedRtRepository wedRtRepository;
	@Autowired
	WedCsRepository wedCsRepository;
	@Autowired
	WedRepository wedRepository;
	public void execute(String wedRvNo, Model model) {
		//최종예약
		WedRvDTO wedRvDTO = new WedRvDTO();
		wedRvDTO.setWedRvNo(wedRvNo);
		List<WedRvDTO> wedRvList = wedRvRepository.getWedRvList(wedRvDTO);
		model.addAttribute("wedRvList", wedRvList.get(0));

		//상담
		WedCsDTO wedCsDTO = new WedCsDTO();
		wedCsDTO.setWedCosNo(wedRvDTO.getWedCosNo());
		List<WedCsDTO> wedCsList = wedCsRepository.getWedCsList(wedCsDTO);
		model.addAttribute("wedCsList", wedCsList.get(0));
		
		//웨딩홀
		WedDTO wedDTO = new WedDTO();
		wedDTO.setWedNo(wedRvDTO.getWedNo());
		List<WedDTO> wedList = wedRepository.getWedList(wedDTO);
		model.addAttribute("wedList", wedList.get(0));
		
		//레스토랑
		WedResDTO wedResDTO = new WedResDTO();
		wedResDTO.setWedRtNo(wedRvDTO.getWedRtNo());
		List<WedResDTO> wedRtList = wedRtRepository.getWedRtList(wedResDTO);
		model.addAttribute("wedRtList", wedRtList.get(0));	
		
		
		//웨딩 리스트
		List<WedDTO> wedArrayList = wedRepository.getWedList(wedDTO);
		model.addAttribute("wedArrayList", wedArrayList);	
		//레스토랑 리스트
		List<WedResDTO> wedRtArrayList = wedRtRepository.getWedRtList(wedResDTO);
		model.addAttribute("wedRtArrayList", wedRtArrayList);	
		
	}

}
