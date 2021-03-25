package service.resmenu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.ResmenuDTO;
import model.DTO.StartEndPageDTO;
import repository.resmenu.ResmenuRepository;

@Service
public class ResmenuListService {
	@Autowired
	ResmenuRepository resmenuRepository;
	public void execute(Integer page, Model model, String rtNo) {
		int limit = 10;
		int limitPage = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit - 1;
		
		ResmenuDTO resmenuDTO = new ResmenuDTO();
		
		resmenuDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		resmenuDTO.setRtNo(rtNo);
		
		List<ResmenuDTO> list = resmenuRepository.selectResmenu(resmenuDTO);
		Integer count = resmenuRepository.resmenuCount();
		model.addAttribute("resmenuList" , list);
		model.addAttribute("count", count);
		model.addAttribute("rtNo", rtNo);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "resmenu?");
	}
}

