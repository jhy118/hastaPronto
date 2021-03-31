package controller.resmenu;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ResmenuCommand;
import service.resmenu.ResMenuDeleteService;
import service.resmenu.ResMenuModifyService;
import service.resmenu.ResmenuDetailService;
import service.resmenu.ResmenuListService;
import service.resmenu.ResmenuRegistService;
import validator.ResmenuCommandValidator;

@Controller
@RequestMapping(value = "resmenu")
public class ResmenuController {
	@Autowired
	ResmenuRegistService resmenuRegistService;
	@Autowired
	ResmenuListService resmenuListService;
	@Autowired
	ResmenuDetailService resmenuDetailService;
	@Autowired
	ResMenuModifyService resMenuModifyService;
	@Autowired
	ResMenuDeleteService resMenuDeleteService;
	
	@RequestMapping(value = "resmenuList", method = RequestMethod.GET)
	public String resmenuList(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model,
			@RequestParam(value = "rtNo") String rtNo, @RequestParam(value = "rtRvNo") String rtRvNo) {
		model.addAttribute("rtRvNo", rtRvNo);
		
		resmenuListService.execute(page,model,rtNo);
		return "resmenu/resmenuList";  
	}
	@RequestMapping(value = "resmenuForm", method = RequestMethod.GET)
	public String resmenuForm(Model model
			,@RequestParam(value = "rtNo") String rtNo, ResmenuCommand resmenuCommand) {
		resmenuCommand.setRtNo(rtNo);
		model.addAttribute("resmenuRegist", resmenuCommand);
		
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
		resmenuRegistService.execute(resmenuCommand, session);
		return "redirect:/resmenu/resmenuList?rtNo="+resmenuCommand.getRtNo();
	}
	@RequestMapping(value = "resmenuDetail", method = RequestMethod.GET)
	public String resmenuDetail(Model model, @RequestParam(value = "rtMenuNo") String rtMenuNo) {
		
		resmenuDetailService.execute(model, rtMenuNo);
		return "resmenu/resmenuDetail";
	}
	@RequestMapping(value = "resmenuModify", method = RequestMethod.GET)
	public String resmenuModify(Model model, @RequestParam(value = "rtMenuNo") String rtMenuNo) {
		   
		resmenuDetailService.execute(model, rtMenuNo);
		return "resmenu/resmenuModify";
	}
	@RequestMapping(value = "resmenuModifyPro" , method = RequestMethod.POST)
	public String resmenuModifyPro(
			@ModelAttribute(value="resmenu") ResmenuCommand resmenuCommand, HttpSession session) {
		
		resMenuModifyService.execute(resmenuCommand, session);
		return "redirect:/resmenu/resmenuList?rtNo="+resmenuCommand.getRtNo();
	}
	@RequestMapping(value = "resmenuDelete")
	public String resmenuDelete(
			@RequestParam(value = "rtMenuNo") String rtMenuNo,
			@RequestParam(value = "rtNo") String rtNo , HttpSession session) {
		   
		resMenuDeleteService.execute(rtMenuNo, session);
		return "redirect:/resmenu/resmenuList?rtNo="+rtNo;  
	}
	
	
}
