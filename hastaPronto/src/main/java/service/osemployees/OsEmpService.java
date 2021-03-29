package service.osemployees;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import command.OseCommand;
import model.DTO.AuthInfo;
import model.DTO.OsEmpDTO;
import repository.osemployees.OsEmpRepository;

public class OsEmpService {
	@Autowired
	OsEmpRepository osEmpRepository;
	public void execute(OseCommand oseCommand, HttpServletRequest request) {
		HttpSession session = request.getSession();

		//OsEmpCommand의 것을 dto에 저장
		OsEmpDTO osEmpDTO = new OsEmpDTO();
		osEmpDTO.setOseId(oseCommand.getOseId());
		osEmpDTO.setOsePw(oseCommand.getOsePw());
		osEmpDTO.setOseCat(oseCommand.getOseCat());
		osEmpDTO.setOsePh(oseCommand.getOsePh());
		osEmpDTO.setOseEmail(oseCommand.getOseEmail());
		osEmpDTO.setOseAddr(oseCommand.getOseAddr());
		osEmpDTO.setOseName(oseCommand.getOseName());
		osEmpDTO.setOsNo(oseCommand.getOsNo());
		
		
		osEmpRepository.insertOsEmp(osEmpDTO);
	}

}
