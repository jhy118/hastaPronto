package controller.notice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import command.FileInfo;
import command.NoticeCommand;
import controller.FileDelService;
import service.notice.FileDownService;
import service.notice.NoticeDeleteService;
import service.notice.NoticeDetailService;
import service.notice.NoticeListService;
import service.notice.NoticeModifyService;
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
	@Autowired
	FileDownService fileDownService;
	@Autowired
	FileDelService fileDelService;
	@Autowired
	NoticeModifyService noticeModifyService;
	@Autowired
	NoticeDeleteService noticeDeleteService;

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
	public String noticeDetail(@PathVariable(value = "id") String noticeNo, Model model) {
		noticeDetailService.execute(noticeNo, model);
		noticeDetailService.upCount(noticeNo);
		return "notice/noticeDetail";
	}

	@RequestMapping(value = "noticeModify/{id}", method = RequestMethod.GET)
	public String noticeModify(@PathVariable(value = "id") String noticeNo, Model model) {
		noticeDetailService.execute(noticeNo, model);
		return "notice/noticeModify";
	}

	@RequestMapping(value = "noticeModify/{id}", method = RequestMethod.POST)
	public String noticeModifyOk(@ModelAttribute(value = "notice") NoticeCommand noticeCommand, HttpSession session) {
		String path = noticeModifyService.execute(noticeCommand, session);
		return path;
	}

	@RequestMapping(value = "fileDown", method = RequestMethod.GET)
	public void fileDown(@RequestParam(value = "sfileName") String sfileName,
			@RequestParam(value = "ofileName") String ofileName, HttpServletRequest req, HttpServletResponse resp) {
		fileDownService.execute(ofileName, sfileName, req, resp);
	}

	@RequestMapping(value = "fileDel", method = RequestMethod.POST)
	public String fileDel(FileInfo fileInfo, Model model, HttpSession session) {
		fileDelService.execute(fileInfo, session, model);
		return "include/fileDel";
	}

	@RequestMapping(value = "noticeDelete/{id}", method = RequestMethod.GET)
	public String noticeDelete(@PathVariable(value = "id")String noticeNo, HttpSession session) {
		noticeDeleteService.execute(noticeNo, session);
		return "redirect:/notice/notice";
	}
}
