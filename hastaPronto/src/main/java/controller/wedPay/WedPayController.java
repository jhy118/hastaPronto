package controller.wedPay;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.WedRvCommand;
import service.wedPay.WedPayFormService;
import service.wedPay.WedPayOkService;

@Controller
@RequestMapping("wedPay")
public class WedPayController {
	@Autowired
	WedPayFormService wedPayFormService;
	@Autowired
	WedPayOkService wedPayOkService;
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
	@RequestMapping("wedPayList")
	public String wedPayList() {
		return "wedPay/wedPayList";
	}
}
