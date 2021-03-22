package service.list;

import org.springframework.beans.factory.annotation.Autowired;

import command.MemberCommand;
import model.DTO.MemberDTO;
import repository.member.MemberRepository;

public class MemberModifyService {
	@Autowired
	MemberRepository memberRepository;
	public void execute(MemberCommand memberCommand) {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setUserId(memberCommand.getMemId());
		memberDTO.setUserPh(memberCommand.getMemPh());
		memberDTO.setUserEmail(memberCommand.getMemEmail());
		memberDTO.setUserAddr(memberCommand.getMemAddr());
		memberRepository.updateMember(memberDTO);
	}
}
