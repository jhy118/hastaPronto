package controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.MemberCommand;
import service.list.MemberDeleteService;
import service.list.MemberDetailService;
import service.list.MemberListService;
import service.list.MemberModifyService;

@Controller
@RequestMapping("man")
public class MemberListController {
	@Autowired
	MemberListService memberListService;
	@Autowired
	MemberDetailService memberDetailService;
	@Autowired
	MemberModifyService memberModifyService;
	@Autowired
	MemberDeleteService memberDeleteService;
	@RequestMapping("memList")
	public String memList(
			@RequestParam(value="page", defaultValue = "1") Integer page, Model model ) {
		memberListService.execute(model, page);
		return "member/memList";
	}
	@RequestMapping("memberInfo")
	public String memberInfo(@RequestParam(value = "userId")
			String userId, Model model) {
		memberDetailService.execute(userId, model);
		return "member/memberInfo";
	}
	@RequestMapping("memberModify/{userId}")
	public String memberModify(@PathVariable(value = "userId")
			String userId, Model model) {
		memberDetailService.execute(userId, model);
		return "member/memberModify";
	}
	@RequestMapping("memberModifyPro")
	public String memberModifyPro(@ModelAttribute ("manModify") MemberCommand memberCommand) {  
		System.out.println(memberCommand.getMemId());
		memberModifyService.execute(memberCommand);
		return "redirect:memberInfo?userId=" + memberCommand.getMemId();
	}
	@RequestMapping("memberDelete/{userId}")
	public String memberDelete(@PathVariable(value = "userId") String userId) {
		memberDeleteService.execute(userId);
		return "redirect:memList";
	}
	
}
