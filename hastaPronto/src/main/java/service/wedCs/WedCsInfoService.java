package service.wedCs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.OsDTO;
import model.DTO.WedCsDTO;
import model.DTO.WedDTO;
import repository.wedCs.WedCsRepository;
import repository.wedding.WedRepository;

@Service
@Component
public class WedCsInfoService {
	@Autowired
	WedCsRepository wedCsRepository;
	@Autowired
	WedRepository wedRepository;
	public void execute(String wedCosNo, Model model) {
		//wedCsInfo
		WedCsDTO wedCsDTO = new WedCsDTO();
		wedCsDTO.setWedCosNo(wedCosNo);
		List<WedCsDTO> list = wedCsRepository.getWedCsList(wedCsDTO);
		model.addAttribute("list", list.get(0));
		
		//wedCsInfo열때 wedding정보도 받아옴. 하나만
		WedDTO wedDTO = new WedDTO();
		wedDTO.setWedNo(wedCsDTO.getWedNo());
		List<WedDTO> wedList1 = wedRepository.getWedList(wedDTO);
		model.addAttribute("wedList1", wedList1.get(0));

		//wedCsModify열때 가져올 웨딩정보를 리스트로 받아옴
		List<WedDTO> wedList = wedRepository.getWedList(wedDTO);
		model.addAttribute("wedList", wedList);		
	}
}
