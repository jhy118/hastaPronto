package controller.wedCs;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;

import command.WedCsCommand;
import validator.WedCsCommandValidator;

@Controller
@RequestMapping("wedCs")
public class WedCsController {
	@RequestMapping("wedCsList")
	public String wedCsList() {
		return "wedCs/wedCsList";
	}
	@RequestMapping("wedCsForm")
	public String wedCsForm(WedCsCommand wedCsCommand) {
		return "wedCs/wedCsForm";
	}
	@RequestMapping("wedCsRvOk")
	public String wedCsRvOk(WedCsCommand wedCsCommand,
			Errors errors) {
		new WedCsCommandValidator().validate(wedCsCommand, errors);
		if(errors.hasErrors()) {
			return "wedCs/wedCsForm";
		}
		return "redirect:wedCsList";
	}	
}
