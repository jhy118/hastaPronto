package service.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.DepartmentCommand;
import model.DTO.DepartmentDTO;
import repository.department.DepartmentRepository;

@Service
@Component
public class DepartmentRegistService {
	@Autowired
	DepartmentRepository departmentRepository;
	
	public void execute(DepartmentCommand deptCommand) {
		DepartmentDTO deptDTO = new DepartmentDTO();
		deptDTO.setDepName(deptCommand.getDepName());
		deptDTO.setDepAddr(deptCommand.getDepAddr());
		deptDTO.setDepPh(deptCommand.getDepPh());
		int result = departmentRepository.insertDepartment(deptDTO);
		System.out.println(result + " 등록");
	}
	
}
