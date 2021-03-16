package service.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.EmployeeDTO;
import model.DTO.StartEndPageDTO;
import repository.employee.EmployeeRepository;

@Service
@Component
public class EmployeeListService {
	@Autowired
	EmployeeRepository employeeRepository;

	public void execute(Integer page, Model model) throws Exception {
		int limit = 10;
		int limitPage = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit - 1;
		EmployeeDTO employeeDTO = new EmployeeDTO();
		employeeDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		List<EmployeeDTO> lists = employeeRepository.getEmployees(employeeDTO);
		Integer count = employeeRepository.getEmployeesCount();
		model.addAttribute("lists", lists);
		model.addAttribute("count", count);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "empList?");
	}

}
