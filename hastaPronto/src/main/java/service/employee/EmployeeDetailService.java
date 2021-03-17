package service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.DepartmentDTO;
import model.DTO.EmployeeDTO;
import repository.department.DepartmentRepository;
import repository.employee.EmployeeRepository;

@Service
@Component
public class EmployeeDetailService {
	@Autowired
	EmployeeRepository employeeRepository;
	@Autowired
	DepartmentRepository departmentRepository;

	public void execute(String empId, Model model) {
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setEmpId(empId);
		employeeDTO = employeeRepository.getEmployees(employeeDTO).get(0);
		DepartmentDTO deptDTO = new DepartmentDTO();
		List<DepartmentDTO> lists = departmentRepository.getDepartments(deptDTO);
		model.addAttribute("deptList" ,lists);
		model.addAttribute("emp", employeeDTO);
	}
}