package service.employee;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.EmployeeCommand;
import model.DTO.EmployeeDTO;
import repository.department.DepartmentRepository;
import repository.employee.EmployeeRepository;

@Service
@Component
public class EmployeeModifyService {
	@Autowired
	EmployeeRepository employeeRepository;

	public String execute(EmployeeCommand empCommand) {
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmpId(empCommand.getEmpId());
		employeeDTO.setDepNo(empCommand.getDepNo());
		employeeDTO.setEmpPh(empCommand.getEmpPh());
		employeeDTO.setEmpAddr(empCommand.getEmpAddr());
		employeeDTO.setEmpEmail(empCommand.getEmpEmail());
		Integer result = employeeRepository.updateEmployee(employeeDTO);
		if (result == 1) {
			return "redirect:/emp/empList";
		}
		return "employee/empModify";
	}

}
