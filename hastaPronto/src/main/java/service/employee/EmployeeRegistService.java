package service.employee;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.EmployeeCommand;
import model.DTO.EmployeeDTO;
import repository.employee.EmployeeRepository;

@Service
@Component
public class EmployeeRegistService {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	EmployeeRepository employeeRepository;

	public void excute(EmployeeCommand empCommand, Model model) throws Exception {
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmpAccount(empCommand.getEmpAccount());
		employeeDTO.setEmpAddr(empCommand.getEmpAddr());
		Date df = null;
		try {
			df = new SimpleDateFormat("yyyy-MM-dd").parse(empCommand.getEmpBirth());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Timestamp empBirth = new Timestamp(df.getTime());
		System.out.println(empBirth);
		employeeDTO.setEmpBirth(empBirth);
		employeeDTO.setEmpEmail(empCommand.getEmpEmail());
		employeeDTO.setEmpId(empCommand.getEmpId());
		employeeDTO.setEmpName(empCommand.getEmpName());
		employeeDTO.setEmpPh(empCommand.getEmpPh());
		employeeDTO.setEmpPw(bCryptPasswordEncoder
				.encode(empCommand.getEmpPh().substring(empCommand.getEmpPh().lastIndexOf("-") + 1)));
		Integer result = employeeRepository.insertEmployee(employeeDTO);
		System.out.println(result + "명 등록");
	}
}
