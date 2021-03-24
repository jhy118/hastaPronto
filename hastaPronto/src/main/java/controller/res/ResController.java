package controller.res;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ResCommand;
import service.res.ResDeleteService;
import service.res.ResDetailService;
import service.res.ResListService;
import service.res.ResModifyService;
import service.res.ResRegistService;
import validator.ResCommandValidator;

@Controller
@RequestMapping(value = "res")
	public class ResController {
	@Autowired
	ResRegistService resRegistService;
	@Autowired
	ResListService resListService;
	@Autowired
	ResDetailService resDetailService;
	@Autowired
	ResModifyService resModifyService;
	@Autowired
	ResDeleteService resDeleteService;
	@RequestMapping(value = "resList", method = RequestMethod.GET)
	public String resList(@RequestParam(value = "page", defaultValue = "1") Integer page,
			Model model) {
		
		resListService.execute(page, model);
		return "res/resList";
	}
	
	@RequestMapping(value = "resForm", method = RequestMethod.GET)
	public String resForm(Model model) {   
		model.addAttribute("resRegist", new ResCommand());
		
		return "res/resForm";    
	}
	@RequestMapping(value = "resRegistPro", method = RequestMethod.POST)
	public String resRegist(
			@ModelAttribute(value = "resRegist") ResCommand resCommand, Errors errors, 
			HttpSession session) {
		new ResCommandValidator().validate(resCommand, errors);
		if(errors.hasErrors()) {
			return "res/resForm";
		}
		resRegistService.execute(resCommand, session);
	return "redirect:/res/resList";
	}
	@RequestMapping(value = "resDetail")
	public String resDetail(Model model,
			@RequestParam(value = "rtNo") String rtNo) {
		
			resDetailService.execute(model, rtNo);
		return "res/resDetail";
	}
	@RequestMapping(value = "resModify")
	public String resModify(Model model
			,@RequestParam(value = "rtNo") String rtNo) {
		
			resDetailService.execute(model, rtNo);
		return "res/resModify";
	}
	@RequestMapping(value = "resModifyPro")
	public String resModifyPro(
			@ModelAttribute(value = "resModify") ResCommand resCommand , HttpSession session) {
		
		resModifyService.execute(resCommand, session);
		return "redirect:/res/resList";
	}
	@RequestMapping(value = "resDelete")
	public String resDelete(
			@RequestParam(value = "rtNo") String rtNo, HttpSession session) {
		
		resDeleteService.execute(rtNo, session);
		return "redirect:/res/resList";
	}
	
	
}

