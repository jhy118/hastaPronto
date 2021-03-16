package service.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.MemberDTO;
import model.DTO.StartEndPageDTO;
import repository.member.MemberListRepository;

public class MemberListService {
	@Autowired
	MemberListRepository memberListRepository;
	public void execute(Model model, Integer page) {
		int limit = 10;
		int limitPage = 10;
		Long startRow = ((long)page - 1) * 10 + 1;
		Long endRow = startRow + limit - 1;
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		
		List<MemberDTO> list = memberListRepository.getMemList(memberDTO);
		int count = memberListRepository.getMemCount();
		model.addAttribute("memList", list);
		model.addAttribute("count", count);
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "memList?");
		
	}
}
