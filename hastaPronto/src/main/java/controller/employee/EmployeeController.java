package controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import service.employee.EmployeeDeleteService;
import service.employee.EmployeeDetailService;
import service.employee.EmployeeListService;
import service.employee.EmployeeModifyService;
import service.employee.EmployeeRegistService;
import validator.EmployeeCommandValidator;

@Controller
@RequestMapping("emp")
public class EmployeeController {
	@Autowired
	EmployeeRegistService employeeRegistService;
	@Autowired
	EmployeeListService employeeListService;
	@Autowired
	EmployeeDetailService employeeDetailService;
	@Autowired
	EmployeeModifyService employeeModifyService;
	@Autowired
	EmployeeDeleteService employeeDeleteService;

	@RequestMapping(value = "empList", method = RequestMethod.GET)
	public String empList(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model)
			throws Exception {
		employeeListService.execute(page, model);
		return "employee/empList";
	}

	@RequestMapping(value = "empRegist", method = RequestMethod.GET)
	public String empForm(Model model) {
		model.addAttribute("empCommand", new EmployeeCommand());
		return "employee/empForm";
	}

	@RequestMapping(value = "empRegist", method = RequestMethod.POST)
	public String empRegist(@ModelAttribute(value = "empCommand") EmployeeCommand empCommand, Errors errors,
			Model model) throws Exception {
		new EmployeeCommandValidator().validate(empCommand, errors);
		System.out.println(empCommand.getEmpBirth());
		if (errors.hasErrors()) {
			return "employee/empForm";
		}
		employeeRegistService.excute(empCommand, model);
		return "redirect:/emp/empList";
	}

	@RequestMapping(value = "empDetail/{id}", method = RequestMethod.GET)
	public String empDetail(@PathVariable(value = "id") String empId, Model model) {
		employeeDetailService.execute(empId, model);
		return "employee/empDetail";
	}

	@RequestMapping(value = "empModify/{id}", method = RequestMethod.GET)
	public String empModify(@PathVariable(value = "id") String empId, Model model) {
		employeeDetailService.execute(empId, model);
		return "employee/empModify";
	}

	@RequestMapping(value = "empModifyAction", method = RequestMethod.POST)
	public String empModifyAction(@ModelAttribute(value = "empCommand") EmployeeCommand empCommand) {
		String path = employeeModifyService.execute(empCommand);
		return path;
	}
	
	@RequestMapping(value = "empDelete/{id}", method = RequestMethod.GET)
	public String empDelete(@PathVariable(value = "id") String empId) {
		employeeDeleteService.execute(empId);
		return "redirect:/emp/empList";
	}
}