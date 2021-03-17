package service.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import repository.employee.EmployeeRepository;

@Service
@Component
public class EmployeeDeleteService {
	@Autowired
	EmployeeRepository employeeRepository;

	public void execute(String empId) {
		int result = employeeRepository.deleteEmployee(empId);
		System.out.println(result + "명 삭제");
	}
}
