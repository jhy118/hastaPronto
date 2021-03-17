package service.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.DepartmentCommand;
import model.DTO.DepartmentDTO;
import repository.department.DepartmentRepository;

@Service
@Component
public class DepartmentModifyService {
	@Autowired
	DepartmentRepository departmentRepository;

	public String execute(DepartmentCommand deptCommand, String depNo) {
		DepartmentDTO deptDTO = new DepartmentDTO();
		deptDTO.setDepNo(depNo);
		deptDTO.setDepName(deptCommand.getDepName());
		deptDTO.setDepAddr(deptCommand.getDepAddr());
		deptDTO.setDepPh(deptCommand.getDepPh());
		Integer result = departmentRepository.updateDepartment(deptDTO);
		if (result == 1) {
			return "redirect:/dept/deptList";
		}
		return "department/deptModify";
	}
}
