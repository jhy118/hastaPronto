package controller.wedCs;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.WedCsCommand;
import service.wedCs.WedCsDeleteService;
import service.wedCs.WedCsFormService;
import service.wedCs.WedCsInfoService;
import service.wedCs.WedCsListService;
import service.wedCs.WedCsModifyService;
import service.wedCs.WedCsRegistService;
import validator.WedCsCommandValidator;

@Controller
@RequestMapping("wedCs")
public class WedCsController {
	@Autowired
	WedCsFormService wedCsFormService;
	@Autowired
	WedCsRegistService wedCsRegistService;
	@Autowired
	WedCsListService wedCsListService;
	@Autowired
	WedCsInfoService wedCsInfoService;
	@Autowired
	WedCsModifyService wedCsModifyService;
	@Autowired
	WedCsDeleteService wedCsDeleteService;
	@RequestMapping("wedCsList")
	public String wedCsList(Model model, WedCsCommand wedCsCommand) {
		wedCsListService.execute(model, wedCsCommand);
		return "wedCs/wedCsList";
	}
	@RequestMapping("wedCsForm")
	public String wedCsForm(WedCsCommand wedCsCommand, Model model) {
		wedCsFormService.execute(model);
		return "wedCs/wedCsForm";
	}
	@RequestMapping("wedCsRvOk")
	public String wedCsRvOk(@ModelAttribute(value="wedCsCommand")WedCsCommand wedCsCommand,
			Errors errors, HttpSession session) {
		new WedCsCommandValidator().validate(wedCsCommand, errors);
		if(errors.hasErrors()) {
			return "wedCs/wedCsForm";
		}
		wedCsRegistService.execute(wedCsCommand, session);
		return "redirect:wedCsList";
	}
	@RequestMapping("wedCsInfo")
	public String wedCsInfo(
			@RequestParam(value="wedCosNo") String wedCosNo,
			Model model) {
		wedCsInfoService.execute(wedCosNo, model);
		return "wedCs/wedCsInfo"; 
	}
	@RequestMapping("wedCsModify")
	public String wedCsModify(
			@RequestParam("wedCosNo") String wedCosNo,
			Model model) {
		wedCsInfoService.execute(wedCosNo, model);
		return "wedCs/wedCsModify";
	}
	@RequestMapping("wedCsModifyOk")
	public String wedCsModifyOk(WedCsCommand wedCsCommand) {
		wedCsModifyService.execute(wedCsCommand);
		return "redirect:wedCsInfo?wedCosNo="
				+wedCsCommand.getWedCosNo();
	}
	@RequestMapping("wedCsDel")
	public String wedCsDel(String wedCosNo) {
		wedCsDeleteService.execute(wedCosNo);
		return "redirect:wedCsList";
	}
}
