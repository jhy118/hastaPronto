package controller.wedPay;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("wedPay")
public class WedPayController {
	@RequestMapping("wedPayList")
	public String wedPayList() {
		return "wedPay/wedPayList";
	}
}
