package service.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.MemberDTO;
import repository.member.MemberListRepository;

public class MemberListService {
	@Autowired
	MemberListRepository memberListRepository;
	public void execute(Model model) {
		List<MemberDTO> list = memberListRepository.getMemList();
		int count = memberListRepository.getMemCount();
		model.addAttribute("memList", list);
		model.addAttribute("count", count);
	}
}
