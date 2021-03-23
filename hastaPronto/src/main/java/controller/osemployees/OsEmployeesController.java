package controller.osemployees;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.OseCommand;

@Controller
@RequestMapping("osEmployees")
public class OsEmployeesController {
	@RequestMapping(value = "osEmpList", method = RequestMethod.GET)
	public String osEmployees() {
//			@RequestParam(value = "page", defaultValue = "1") Integer page, Model model
//		osListService.execute(page, model);
		return "osEmployees/osEmpList";
	}
	@RequestMapping("osEmpForm")
	public String oseForm(OseCommand oseCommand) {
		return "osEmployees/osEmpForm";
	}
}

