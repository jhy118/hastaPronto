package service.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.MemberDTO;
import repository.member.MemberListRepository;

public class MemberDetailService {
	@Autowired
	MemberListRepository memberListRepository;
	public void execute(String userId, Model model) {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setUserId(userId);
		List<MemberDTO> list = memberListRepository.getMemList(memberDTO);
		model.addAttribute("memberCommand", list.get(0));
	}
}
