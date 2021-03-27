package controller.wedCs;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("wedCs")
public class WedCsController {
	@RequestMapping("wedCsForm")
	public String wedCsForm() {
		return "wedCs/wedCsForm";
	}
}
