package service.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.DepartmentDTO;
import repository.department.DepartmentRepository;

@Service
@Component
public class DepartmentDetailService {
	@Autowired
	DepartmentRepository departmentRepository;

	public void execute(Model model, String depNo) {
		DepartmentDTO deptDTO = new DepartmentDTO();
		deptDTO.setDepNo(depNo);
		deptDTO = departmentRepository.getDepartments(deptDTO).get(0);
		model.addAttribute("dept" ,deptDTO);
	}
	
}
