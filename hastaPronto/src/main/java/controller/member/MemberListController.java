package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.list.MemberListService;

@Controller
@RequestMapping("man")
public class MemberListController {
	@Autowired
	MemberListService memberListService; 
	@RequestMapping("memList")
	public String memList(
			@RequestParam(value="page", defaultValue = "1") Model model, Integer page) {
		memberListService.execute(model, page);
		return "member/memList";
	}
}
