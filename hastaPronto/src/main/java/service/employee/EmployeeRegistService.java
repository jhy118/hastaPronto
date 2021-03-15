package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;

import command.EmployeeCommand;
import model.DTO.EmployeeDTO;

public class EmployeeRegistService {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void excute(EmployeeCommand empCommand, Model model) {
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmpAccount(empCommand.getEmpAccount());
		employeeDTO.setEmpAddr(empCommand.getEmpAddr());
//		employeeDTO.setEmpBirth(empCommand.getEmpBirth());
		employeeDTO.setEmpEmail(empCommand.getEmpEmail());
		
	}
}
