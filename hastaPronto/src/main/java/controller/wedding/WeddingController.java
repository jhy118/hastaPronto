package controller.wedding;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("wedding")
public class WeddingController {
	@RequestMapping("wedBrochure")
	public String wedBrochure(
			@RequestParam(value="page", defaultValue = "1") Integer page,
			Model model) {
		return "wedding/wedBrochure";
	}
}
