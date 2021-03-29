package controller.wedRv;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("wedRv")
public class WedRvController {
	@RequestMapping("wedRvForm")
	public String wedRvForm() {
		return "wedRv/wedRvForm";
	}
}
