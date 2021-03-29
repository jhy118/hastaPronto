package service.osemployees;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.ApplicantDTO;
import model.DTO.NoticeDTO;
import model.DTO.OsDTO;
import model.DTO.OsEmpDTO;
import model.DTO.StartEndPageDTO;
import repository.osemployees.OsEmpRepository;
import repository.outsourcing.OsRepository;

public class OsEmpListService {
	@Autowired
	OsEmpRepository osEmpRepository;	
	@Autowired
	OsRepository osRepository;
	public void execute(Model model, Integer page) {
		int limit = 15;
		int limitPage = 10;
		Long startRow = ((long)page -1) * limit + 1;
		Long endRow = startRow + limit -1;
		
		OsEmpDTO osEmpDTO = new OsEmpDTO();
		osEmpDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		List<OsEmpDTO> list = osEmpRepository.getOsEmpList(osEmpDTO);
		OsDTO osDTO = new OsDTO();
		List<OsDTO> lists = osRepository.getOsList(osDTO);
		
		Integer count = osEmpRepository.listCount();
		model.addAttribute("list",list);
		model.addAttribute("lists", lists);
		model.addAttribute("count", count);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "osEmpList?");
		

	}

}
