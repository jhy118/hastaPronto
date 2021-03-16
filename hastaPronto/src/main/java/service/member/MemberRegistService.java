package service.member;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.MemberCommand;
import model.DTO.MemberDTO;
import repository.member.MemberRepository;

@Service
@Component
public class MemberRegistService {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	MemberRepository memberRepository;
	
	public void execute(MemberCommand memCommand, Model model) {
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setUserAddr(memCommand.getMemAddr());
		
		Date df = null;
		try {
			df = new SimpleDateFormat("yyyy-MM-dd").parse(memCommand.getMemBirth());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Timestamp userBirth = new Timestamp(df.getTime());
		
		memberDTO.setUserBirth(userBirth);
		memberDTO.setUserEmail(memCommand.getMemEmail());
		memberDTO.setUserGender(memCommand.getMemGender());
		
		memberDTO.setUserId(memCommand.getMemId());
		
		memberDTO.setUserName(memCommand.getMemName());
		
		memberDTO.setUserPh(memCommand.getMemPh());
		memberDTO.setUserPassword(bCryptPasswordEncoder.encode(memCommand.getMemPw()));
		memberRepository.insertMember(memberDTO);
		  
	}
}
