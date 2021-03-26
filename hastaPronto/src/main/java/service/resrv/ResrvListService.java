package service.resrv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.ResrvDTO;
import model.DTO.StartEndPageDTO;
import repository.resrv.ResrvRepository;

public class ResrvListService {
	@Autowired
	ResrvRepository resrvRepository;
	public void execute(String rtNo, Model model, Integer page) {
		int limit = 10;
		int limitPage = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit - 1;
		
		ResrvDTO resrvDTO = new ResrvDTO();
		
		resrvDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		resrvDTO.setRtNo(rtNo);
		
		List<ResrvDTO> list = resrvRepository.selectResrv(resrvDTO);
		Integer count = resrvRepository.countResrv();
		model.addAttribute("resrvList", list);
		model.addAttribute("count", count);
		model.addAttribute("rtNo", rtNo);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "resrv?");
		
		
		
	}
}
