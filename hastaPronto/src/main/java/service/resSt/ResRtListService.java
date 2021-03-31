package service.resSt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.ResStDTO;
import model.DTO.StartEndPageDTO;
import repository.resSt.ResStRepository;

@Service
public class ResRtListService {
	@Autowired
	ResStRepository resStRepository;
	public void execute(Integer page, Model model, String rtRvNo) {
		int limit = 10;
		int limitPage = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit -1;
		
		ResStDTO resStDTO = new ResStDTO();
		
		resStDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		resStDTO.setRtRvNo(rtRvNo);
		
		List<ResStDTO> list = resStRepository.selectResSt(resStDTO);
		Integer count = resStRepository.countResSt();
		model.addAttribute("resStList", list);
	}
	
}
