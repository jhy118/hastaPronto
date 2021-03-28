package controller.resSt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ResStCommand;
import service.resSt.ResRtRegistService;

@Controller
@RequestMapping("resSt")
public class ResStController {
	@Autowired
	ResRtRegistService resRtRegistService;
	@RequestMapping(value = "resStList", method = RequestMethod.GET)
	public String resStList() {
		
		return "resSt/resStList";
	}
	@RequestMapping(value = "resStForm", method = RequestMethod.GET)
	public String resStForm() {
		
		return "resSt/resStForm";
	}
	@RequestMapping(value = "resStRegistPro", method = RequestMethod.POST)
	public String resStRegistPro(
			@ModelAttribute(value = "resStRegist") ResStCommand resStCommand,
			HttpSession session ) {
		
		resRtRegistService.execute(resStCommand, session);
		return "";
	}
}
