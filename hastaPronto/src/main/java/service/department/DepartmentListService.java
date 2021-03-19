package service.department;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.DepartmentDTO;
import repository.department.DepartmentRepository;

@Service
@Component
public class DepartmentListService {
	@Autowired
	DepartmentRepository departmentRepository;

	public void execute(Integer page, Model model) {
		int limit = 10;
		int pageLimit = 10;
		Long startRow = (long) page * limit - 9;
		Long endRow = startRow + limit - 1;
		DepartmentDTO deptDTO = new DepartmentDTO();
		List <DepartmentDTO> lists = departmentRepository.getDepartments(deptDTO);
		Integer count = departmentRepository.getDepartmentsCount();
		model.addAttribute("departments", lists);
		model.addAttribute("count", count);
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, pageLimit, page, "deptList?");
	}

}
