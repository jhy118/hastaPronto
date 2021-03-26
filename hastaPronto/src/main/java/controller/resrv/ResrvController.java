package controller.resrv;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ResrvCommand;
import service.resrv.ResrvDeleteService;
import service.resrv.ResrvDetailService;
import service.resrv.ResrvFormService;
import service.resrv.ResrvListService;
import service.resrv.ResrvModifyService;
import service.resrv.ResrvRegistService;
import validator.ResrvCommandValidator;

@Controller
@RequestMapping(value = "resrv")
public class ResrvController {
	@Autowired
	ResrvRegistService resrvRegistService;
	@Autowired
	ResrvFormService resrvFormService;
	@Autowired
	ResrvListService resrvListService;
	@Autowired
	ResrvDetailService resrvDetailService;
	@Autowired
	ResrvModifyService resrvModifyService;
	@Autowired
	ResrvDeleteService resrvDeleteService;
	
	@RequestMapping(value = "resrvList", method = RequestMethod.GET)
	public String resrvList(@RequestParam(value = "rtNo") String rtNo, Model model,
			@RequestParam(value = "page", defaultValue = "1") Integer page) {
		
		model.addAttribute("rtNo", rtNo);
		resrvListService.execute(rtNo, model, page);
		return "resrv/resrvList";
	}
	@RequestMapping(value = "resrvForm" , method = RequestMethod.GET)
	public String resrvForm(
			@RequestParam(value = "rtNo") String rtNo, Model model, ResrvCommand resrvCommand) {
		
		resrvCommand.setRtNo(rtNo);
		model.addAttribute("resrvRegist", resrvCommand);
		return "resrv/resrvForm";
	}
	@RequestMapping(value = "resrvFormPro", method = RequestMethod.POST)
	public String resrvFormPro(
			@ModelAttribute(value = "resrvRegist") ResrvCommand resrvCommand,
			Errors errors, HttpSession session) {
		new ResrvCommandValidator().validate(resrvCommand, errors);   
		if(errors.hasErrors()) {
			return "resrv/resrvForm";  
		}
		resrvRegistService.execute(resrvCommand, session);
		return "redirect:/resrv/resrvList?rtNo="+resrvCommand.getRtNo();
	}
	@RequestMapping(value = "resrvDetail", method = RequestMethod.GET)
	public String resrvDetail(Model model, @RequestParam(value = "rtRvNo") String rtRvNo) {
		
		resrvDetailService.execute(model,rtRvNo);
		return "resrv/resrvDetail";
	}
	@RequestMapping(value = "resrvModify")
	public String resrvModify(Model model, @RequestParam(value = "rtRvNo") String rtRvNo) {
		
		resrvDetailService.execute(model,rtRvNo);
		return "resrv/resrvModify";
	}
	@RequestMapping(value = "resrvModifyPro")
	public String resrvModifyPro(
			@ModelAttribute(value = "resrv") ResrvCommand resrvCommand, HttpSession session) {
		
		resrvModifyService.execute(resrvCommand, session);
		return "redirect:/resrv/resrvList?rtNo="+resrvCommand.getRtNo();
	}
	@RequestMapping(value = "resrvDelete")
	public String resrvDelete(
			@RequestParam(value = "rtRvNo") String rtRvNo,
			@RequestParam(value = "rtNo") String rtNo) {
			
		resrvDeleteService.execute(rtRvNo);
		return "redirect:/resrv/resrvList?rtNo="+rtNo;
	}
}
