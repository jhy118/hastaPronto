package service.res;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.ResDTO;
import model.DTO.StartEndPageDTO;
import repository.res.ResRepository;

public class ResListService {
	@Autowired
	ResRepository resRepository;
	public void execute(Integer page, Model model) {
		int limit = 10;
		int limitPage = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit - 1;
		
		ResDTO resDTO = new ResDTO();
		
		resDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		
		List<ResDTO> list = resRepository.selectRes(resDTO);
		Integer count = resRepository.resCount();
		model.addAttribute("resList", list);
		model.addAttribute("count", count);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "res?");
	}
}

