package controller.member;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.MemberCommand;
import validator.MemberCommandValidator;

@Controller
@RequestMapping("mem")
public class MemberController {
	
	@RequestMapping(value = "memRegist", method = RequestMethod.POST)
	public String memRegist(@ModelAttribute(value = "memCommand") MemberCommand memCommand,
			Errors errors, Model model) {
		new MemberCommandValidator().validate(memCommand, errors);
		if(errors.hasErrors()) {
			return "member/memForm";
		}
		return "";
	}	
}
