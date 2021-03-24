package controller.resmenu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ResmenuCommand;
import service.resmenu.ResmenuRegistService;
import validator.ResmenuCommandValidator;

@Controller
@RequestMapping(value = "resmenu")
public class ResmenuController {
	@Autowired
	ResmenuRegistService ResmenuRegistService;
	@RequestMapping(value = "resmenuList", method = RequestMethod.GET)
	public String resmenuList() {
		
		return "resmenu/resmenuList";
	}
	@RequestMapping(value = "resmenuForm", method = RequestMethod.GET)
	public String resmenuForm(Model model) {
		model.addAttribute("resmenuForm", new ResmenuCommand());
		
		return "resmenu/resmenuForm";
	}
	@RequestMapping(value = "resmenuRegistPro", method = RequestMethod.POST)
	public String resmenuRegistPro(
			@ModelAttribute(value="resmenuRegist") ResmenuCommand resmenuCommand,
			Errors errors, HttpSession session) {
		new ResmenuCommandValidator().validate(resmenuCommand, errors);
		if(errors.hasErrors()) {
			return "resmenu/resmenuForm";
		}
		ResmenuRegistService.execute(resmenuCommand, session);
		return "";
	}
}
