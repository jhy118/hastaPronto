package controller.outsourcing;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.OsCommand;
import service.outsourcing.OsListService;
import service.outsourcing.OutsourcingService;
import validator.OsCommandValidator;

@Controller
@RequestMapping("outsourcing")
public class OutsourcingController {
	@Autowired
	OutsourcingService outsourcingService;
	@Autowired
	OsListService osListService;

	@RequestMapping(value = "osList", method = RequestMethod.GET)
	public String outsourcing(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		osListService.execute(page, model);
		return "outsourcing/osList";
	}

	@RequestMapping("osForm")
	public String osForm(OsCommand osCommand) {
		return "outsourcing/osForm";
	}

	@RequestMapping("osFormAction")
	public String osFormAction(OsCommand osCommand, Errors errors) {
		new OsCommandValidator().validate(osCommand, errors);
		if (errors.hasErrors()) {
			return "outsourcing/osForm";
		}
		outsourcingService.execute(osCommand);
		return "redirect:osList";
	}
}