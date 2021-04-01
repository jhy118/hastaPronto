package controller.wedPay;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.WedRvCommand;
import service.wedPay.WedPayFormService;
import service.wedPay.WedPayOkService;
import service.wedPay.WedPmInfoService;
import service.wedPay.WedPmListService;

@Controller
@RequestMapping("wedPay")
public class WedPayController {
	@Autowired
	WedPayFormService wedPayFormService;
	@Autowired
	WedPayOkService wedPayOkService;
	@Autowired
	WedPmListService wedPmListService;
	@Autowired
	WedPmInfoService wedPmInfoService;
	@RequestMapping("wedPayForm")
	public String wedPayForm(WedRvCommand wedRvCommand, Model model) {
		wedPayFormService.execute(model);
		return "wedPay/wedPayForm";
	}	
	@RequestMapping("wedPayOk")
	public String wedPayOk(
			@RequestParam("wedRvNo") String wedRvNo,
			@RequestParam("wedPmMethod") String wedPmMethod,
			@RequestParam("wedPmChar") double wedPmChar,
			@RequestParam("userId") String userId,
			Model model) {
		wedPayOkService.execute(wedPmMethod, wedPmChar, model, wedRvNo, userId);
		return "wedPay/wedPayOk";
	}
	@RequestMapping("wedPmList")
	public String wedPmList(Model model) {
		wedPmListService.execute(model);
		return "wedPay/wedPmList";
	}
	@RequestMapping("wedPmInfo")
	public String wedPmInfo(Model model) {
		wedPmInfoService.execute(model);
		return "wedPay/wedPmInfo";
	}
	
}
