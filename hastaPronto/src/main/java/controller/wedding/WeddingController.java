package controller.wedding;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.WedCommand;
import service.wedding.WedBroInfoService;
import service.wedding.WedBroListService;
import service.wedding.WedService;
import validator.WedCommandValidator;

@Controller
@RequestMapping("wedding")
public class WeddingController {
	@Autowired
	WedService wedService;
	@Autowired
	WedBroListService wedBroListService;
	@Autowired
	WedBroInfoService wedBroInfoService;
	@RequestMapping("wedBrochure")
	public String wedBrochure(
			@RequestParam(value="page", defaultValue="1") Integer page,
			Model model) {
		wedBroListService.execute(page, model);
		return "wedding/wedBrochure";
	}
	@RequestMapping("wedBroWrite")
	public String wedBroWrite(WedCommand wedCommand) {
		return "wedding/wedBroWrite";
	}
	@RequestMapping("wedBroRegist")
	public String wedBroRegist(WedCommand wedCommand, 
			Errors errors, HttpSession session) {
		new WedCommandValidator().validate(wedCommand, errors);
		if(errors.hasErrors()) {
			return "wedding/wedBroWrite";
		}
		wedService.execute(wedCommand, session);
		return "redirect:wedBrochure";
	}
	@RequestMapping("wedBroInfo")
	public String wedBroInfo(
			@RequestParam(value="wedNo") String wedNo,
			Model model) {
		wedBroInfoService.execute(wedNo, model);
		return "wedding/wedBroInfo";
	}
}
   