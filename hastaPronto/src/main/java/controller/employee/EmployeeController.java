package controller.employee;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.EmployeeCommand;
import service.employee.EmployeeListService;
import service.employee.EmployeeRegistService;
import validator.EmployeeCommandValidator;

@Controller
@RequestMapping("emp")
public class EmployeeController {
	@Autowired
	EmployeeRegistService employeeRegistService;
	@Autowired
	EmployeeListService employeeListService;

	@RequestMapping(value = "empList", method = RequestMethod.GET)
	public String empList(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) throws Exception {
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
		return "employee/empList";
	}
}