package controller.notice;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.NoticeCommand;
import service.notice.NoticeDetailService;
import service.notice.NoticeListService;
import service.notice.NoticeRegistService;
import validator.NoticeCommandValidator;

@Controller
@RequestMapping(value = "notice")
public class NoticeController {
	@Autowired
	NoticeRegistService noticeRegistService;
	@Autowired
	NoticeListService noticeListService;
	@Autowired
	NoticeDetailService noticeDetailService;

	@RequestMapping(value = "notice", method = RequestMethod.GET)
	public String noticeList(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		noticeListService.execute(page, model);
		return "notice/noticeList";
	}

	@RequestMapping(value = "noticeRegist", method = RequestMethod.GET)
	public String noticeForm(Model model) {
		model.addAttribute("noticeCommand", new NoticeCommand());
		return "notice/noticeForm";
	}

	@RequestMapping(value = "noticeRegist", method = RequestMethod.POST)
	public String noticeRegitst(@ModelAttribute(value = "noticeCommand") NoticeCommand noticeCommand, Errors errors,
			HttpSession httpSession) {
		new NoticeCommandValidator().validate(noticeCommand, errors);
		if (errors.hasErrors()) {
			return "notice/noticeForm";
		}
		String path = noticeRegistService.execute(noticeCommand, httpSession);
		return path;
	}
	
	@RequestMapping(value = "noticeDetail/{id}", method = RequestMethod.GET)
	public String noticeDetail(@PathVariable(value="id")String noticeNo, Model model) {
		noticeDetailService.execute(noticeNo, model);
		noticeDetailService.upCount(noticeNo);
		return "notice/noticeDetail";
	}
}
