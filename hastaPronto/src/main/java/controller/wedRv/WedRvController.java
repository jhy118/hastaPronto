package controller.wedRv;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.WedRvCommand;
import service.wedRv.WedRvDeleteService;
import service.wedRv.WedRvFormService;
import service.wedRv.WedRvInfoService;
import service.wedRv.WedRvListService;
import service.wedRv.WedRvModifyService;
import service.wedRv.WedRvOkService;
import validator.WedRvCommandValidator;

@Controller
@RequestMapping("wedRv")
public class WedRvController {
	@Autowired
	WedRvOkService wedRvOkService;
	@Autowired
	WedRvFormService wedRvFormService;
	@Autowired
	WedRvListService wedRvListService;
	@Autowired
	WedRvInfoService wedRvInfoService;
	@Autowired
	WedRvModifyService wedRvModifyService;
	@Autowired
	WedRvDeleteService wedRvDeleteService;
	@RequestMapping("wedRvList")
	public String wedRvList(WedRvCommand wedRvCommand, Model model) {
		wedRvListService.execute(wedRvCommand, model);
		return "wedRv/wedRvList";
	}
	@RequestMapping("wedRvForm")
	public String wedRvForm(WedRvCommand wedRvCommand, Model model) {
		wedRvFormService.execute(model);
		return "wedRv/wedRvForm";
	}
	@RequestMapping("wedRvOk")
	public String wedRvOk(@ModelAttribute(value="wedRvCommand")WedRvCommand wedRvCommand, 
			Errors errors, HttpSession session) {
		new WedRvCommandValidator().validate(wedRvCommand, errors);
		if(errors.hasErrors()) {
			return "wedRv/wedRvForm";
		}
		wedRvOkService.execute(wedRvCommand, session);
		return "wedRv/wedRvOk";
	}
	@RequestMapping("wedRvInfo")
	public String wedRvInfo(
			@RequestParam(value="wedRvNo") String wedRvNo,
			Model model, WedRvCommand wedRvCommand) {
		wedRvInfoService.execute(wedRvNo, model);
		wedRvListService.execute(wedRvCommand, model);
		return "wedRv/wedRvInfo";
	}
	@RequestMapping("wedRvModify")
	public String wedRvModify(
			@RequestParam("wedRvNo") String wedRvNo,
			Model model, WedRvCommand wedRvCommand) {
		wedRvInfoService.execute(wedRvNo, model);
		return "wedRv/wedRvModify";
	}
	@RequestMapping("wedRvModifyOk")
	public String wedRvModifyOk(WedRvCommand wedRvCommand) {
		wedRvModifyService.execute(wedRvCommand);
		return "redirect:wedRvInfo?wedRvNo="
				+wedRvCommand.getWedRvNo();
	}
	@RequestMapping("wedRvDel")
	public String wedRvDel(
			@RequestParam(value="wedRvNo") String wedRvNo) {
		wedRvDeleteService.execute(wedRvNo);
		return "redirect:wedRvList";
	}
	
}
