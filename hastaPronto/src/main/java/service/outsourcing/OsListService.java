package service.outsourcing;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.OsDTO;
import model.DTO.StartEndPageDTO;
import repository.outsourcing.OsRepository;

public class OsListService {
	@Autowired
	OsRepository osRepository;
	public void execute(Integer page, Model model) {
		int limit = 15;
		int limitPage = 10;
		Long startRow = ((long)page -1) * limit + 1;
		Long endRow = startRow + limit -1;
		OsDTO osDTO = new OsDTO();
		osDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		List<OsDTO> list = osRepository.getOsList(osDTO);
		Integer count = osRepository.listCount();
		
		model.addAttribute("count", count);
		model.addAttribute("osList", list);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "osList?");
	}

}
