package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.EmployeeDTO;
import repository.employee.EmployeeRepository;

@Service
@Component
public class EmployeeDetailService {
	@Autowired
	EmployeeRepository employeeRepository;

	public void execute(String empId, Model model) {
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmpId(empId);
		employeeDTO = employeeRepository.getEmployees(employeeDTO).get(0);
		model.addAttribute("emp", employeeDTO);
	}
}