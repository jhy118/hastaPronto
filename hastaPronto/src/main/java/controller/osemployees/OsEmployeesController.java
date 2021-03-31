package controller.osemployees;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.OsCommand;
import command.OseCommand;
import service.osemployees.OsEmpDeleteService;
import service.osemployees.OsEmpDetailService;
import service.osemployees.OsEmpListService;
import service.osemployees.OsEmpModifyService;
import service.osemployees.OsEmpService;
import validator.OsCommandValidator;
import validator.OsEmpCommandValidator;

@Controller
@RequestMapping("osEmployees")
public class OsEmployeesController {
	@Autowired
	OsEmpService osEmpService;
	@Autowired
	OsEmpListService osEmpListService;
	@Autowired
	OsEmpDetailService osEmpDetailService;
	@Autowired
	OsEmpModifyService osEmpModifyService;
	@Autowired
	OsEmpDeleteService osEmpDeleteService;

	@RequestMapping("oseDelete/{oseNo}")
	public String oseDelete(
			@PathVariable(value="oseNo") String oseNo ) {
		osEmpDeleteService.execute(oseNo);
		return "redirect:/osEmployees/osEmpList";
	}
	@RequestMapping("osEmpModifyPro")
	public String osModifyPro(OseCommand oseCommand, HttpSession session) {
		osEmpModifyService.execute(oseCommand, session);
		return "redirect:osEmpDetail?oseNo=" + oseCommand.getOseNo();
	}
	@RequestMapping("osEmpModify/{oseNo}")
	public String osEmpModify(
			@PathVariable(value="oseNo") String oseNo, Model model) {
		osEmpDetailService.execute(oseNo, model);
		return "osEmployees/osEmpModify";
	}
	@RequestMapping("osEmpDetail")
	public String osEmpDetail(@RequestParam(value = "oseNo") String oseNo, Model model) {
		osEmpDetailService.execute(oseNo, model);
		return "osEmployees/osEmpDetail";
	}
	@RequestMapping(value = "osEmpList", method = RequestMethod.GET)
	public String osEmployees(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		osEmpListService.execute(model, page);
		return "osEmployees/osEmpList";
	}
	@RequestMapping("osEmpForm")
	public String osForm(OseCommand oseCommand) {
		return "osEmployees/osEmpForm";
	}
	@RequestMapping(value="oseAction", method = RequestMethod.POST)
	public String oseForm(OseCommand oseCommand, Errors errors, HttpServletRequest request) {
		new OsEmpCommandValidator().validate(oseCommand, errors);
		if (errors.hasErrors()) {
			return "osEmployees/osEmpForm";
		}
		osEmpService.execute(oseCommand, request);
		return "redirect:osEmpList";
	}
	
}

