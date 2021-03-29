package controller.resSt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ResStCommand;
import service.resSt.ResRtListService;
import service.resSt.ResRtRegistService;

@Controller
@RequestMapping("resSt")
public class ResStController {
	@Autowired
	ResRtRegistService resRtRegistService;
	@Autowired
	ResRtListService resRtListService;
	@RequestMapping(value = "resStList", method = RequestMethod.GET)
	public String resStList(@RequestParam(value = "page", defaultValue = "1")
		Integer page, Model model, @RequestParam(value = "rtRvNo") String rtRvNo) {
		
		resRtListService.execute(page,model,rtRvNo);
		return "resSt/resStList";
	}
	@RequestMapping(value = "resStRegist", method = RequestMethod.GET)
	public String resStRegist(ResStCommand resStCommand, HttpSession session) {

		resRtRegistService.execute(resStCommand, session);
		return "redirect:/resSt/resStList?rtRvNo="+resStCommand.getRtRvNo();
	}
//	@RequestMapping(value = "resStRegistPro", method = RequestMethod.POST)
//	public String resStRegistPro(
//			@ModelAttribute(value = "resStRegist") ResStCommand resStCommand,
//			HttpSession session ) {
//		
//		resRtRegistService.execute(resStCommand, session);
//		return "";
//	}
}
