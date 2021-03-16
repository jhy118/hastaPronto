package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.list.MemberListService;

@Controller
@RequestMapping("man")
public class MemberListController {
	@Autowired
	MemberListService memberListService; 
	@RequestMapping("memList")
	public String memList(Model model) {
		memberListService.execute(model);
		return "member/memList";
	}
}
