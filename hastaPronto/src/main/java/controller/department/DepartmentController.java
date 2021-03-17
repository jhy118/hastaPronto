package controller.department;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.DepartmentCommand;
import service.department.DepartmentDeleteService;
import service.department.DepartmentDetailService;
import service.department.DepartmentListService;
import service.department.DepartmentModifyService;
import service.department.DepartmentRegistService;
import validator.DepartmentCommandValidator;

@Controller
@RequestMapping(value = "dept")
public class DepartmentController {
	@Autowired
	DepartmentRegistService departmentRegistService;
	@Autowired
	DepartmentListService departmentListService;
	@Autowired
	DepartmentDetailService departmentDetailService;
	@Autowired
	DepartmentModifyService departmentModifyService;
	@Autowired
	DepartmentDeleteService departmentDeleteService;

	@RequestMapping(value = "deptList", method = RequestMethod.GET)
	public String department(@RequestParam(value = "page", defaultValue = "1")Integer page, Model model) {
		departmentListService.execute(page, model);
		return "department/deptList";
	}

	@RequestMapping(value = "deptRegist", method = RequestMethod.GET)
	public String deptForm(Model model) {
		model.addAttribute("deptCommand", new DepartmentCommand());
		return "department/deptForm";
	}
	
	@RequestMapping(value = "deptRegist", method = RequestMethod.POST)
	public String deptRegist(@ModelAttribute(value = "deptCommand") DepartmentCommand deptCommand, Errors errors) {
		new DepartmentCommandValidator().validate(deptCommand, errors);;
		if(errors.hasErrors()) {
			return "department/deptForm";
		}
		departmentRegistService.execute(deptCommand);
		return "redirect:/dept/deptList";
	}
	
	@RequestMapping(value = "deptModify/{id}", method = RequestMethod.GET)
	public String deptModifyForm(@PathVariable(value="id")String depNo,Model model) {
		departmentDetailService.execute(model, depNo);
		return "department/deptModify";
	}
	@RequestMapping(value = "deptModify/{id}", method = RequestMethod.POST)
	public String deptModify(@ModelAttribute(value = "depCommand") DepartmentCommand deptCommand,
			@PathVariable(value="id")String depNo) {
		String path = departmentModifyService.execute(deptCommand, depNo);
		return path;
	}
	@RequestMapping(value = "deptDelete/{id}", method = RequestMethod.GET)
	public String deptDelete(@PathVariable(value="id")String depNo) {
		departmentDeleteService.execute(depNo);
		return "redirect:/dept/deptList";
	}
}
