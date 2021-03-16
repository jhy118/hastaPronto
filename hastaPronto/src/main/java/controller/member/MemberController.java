package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import service.member.MemberRegistService;
import validator.MemberCommandValidator;

@Controller
@RequestMapping("mem")
public class MemberController {
	@Autowired
	MemberRegistService memberRegistService;
	
	@RequestMapping(value = "memList", method = RequestMethod.GET)
	public String memList() {
		return "member/memList";
	}
	      
	@RequestMapping(value = "memRegist", method = RequestMethod.GET)
	public String memForm(Model model) {
		model.addAttribute("memCommand", new MemberCommand());
		return "member/memForm";
	}
	
	@RequestMapping(value = "memRegist", method = RequestMethod.POST)
	public String memRegist(@ModelAttribute(value = "memCommand") MemberCommand memCommand,
			Errors errors, Model model) {
		new MemberCommandValidator().validate(memCommand, errors);
		if(errors.hasErrors()) {
			return "member/memForm";
		}
		memberRegistService.execute(memCommand, model);
		return "member/memList";
	}	
}
