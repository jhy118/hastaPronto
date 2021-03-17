package service.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import repository.department.DepartmentRepository;

@Service
@Component
public class DepartmentDeleteService {
	@Autowired
	DepartmentRepository departmentRepository;
	
	public void execute(String depNo) {
		Integer result = departmentRepository.deleteDepartment(depNo);
	}
}
