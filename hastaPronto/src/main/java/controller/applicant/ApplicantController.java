package controller.applicant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ApplicantCommand;
import service.applicant.ApplicantInfoService;
import service.applicant.ApplicantListService;
import service.applicant.ApplicantModifyAction;
import service.applicant.ApplicantSubmitService;
import service.applicant.ConfirmOkService;
import validator.ApplicantCommandValidator;

@Controller
@RequestMapping(value = "apc")
public class ApplicantController {
	@Autowired
	ApplicantSubmitService applicantSubmitService;
	@Autowired
	ApplicantListService applicantListService;
	@Autowired
	ApplicantInfoService applicantInfoService;
	@Autowired
	ConfirmOkService confirmOkService;
	@Autowired
	ApplicantModifyAction applicantModifyAction;

	@RequestMapping(value = "applicant", method = RequestMethod.GET)
	public String applicant(@RequestParam(value = "page", defaultValue = "1") Integer page,
			@RequestParam(value = "noticeNo", defaultValue = "0") String noticeNo, Model model) {
		System.out.println(noticeNo);
		applicantListService.execute(page, model, noticeNo);
		return "applicant/applicantList";
	}

	@RequestMapping(value = "appForm/{id}", method = RequestMethod.GET)
	public String appForm(@PathVariable(value = "id") String noticeNo, Model model) {
		model.addAttribute("appCommand", new ApplicantCommand());
		return "applicant/appForm";
	}

	@RequestMapping(value = "appForm/{id}", method = RequestMethod.POST)
	public String appSubmit(@PathVariable(value = "id") String noticeNo,
			@ModelAttribute(value = "appCommand") ApplicantCommand appCommand, Errors errors) {
		new ApplicantCommandValidator().validate(appCommand, errors);
		if (errors.hasErrors()) {
			return "applicant/appForm";
		}
		applicantSubmitService.execute(appCommand, noticeNo);
		return "applicant/appRegComplete";
	}

	@RequestMapping(value = "applicantInfo/{id}", method = RequestMethod.GET)
	public String applicantInfo(@PathVariable(value = "id") String appNo, Model model) {
		applicantInfoService.execute(appNo, model);
		return "applicant/applicantInfo";
	}

	@RequestMapping(value = "applicantModify/{id}", method = RequestMethod.GET)
	public String applicantModify(@PathVariable(value = "id") String appNo, Model model) {
		applicantInfoService.execute(appNo, model);
		return "applicant/applicantModify";
	}

	@RequestMapping(value = "applicantModify/{id}", method = RequestMethod.POST)
	public String applicantModifyOk(@ModelAttribute(value="applicant")ApplicantCommand appCommand) {
		String path = applicantModifyAction.execute(appCommand);
		return path;
	}

	@RequestMapping(value = "confirm", method = RequestMethod.GET)
	public String confirm() {
		return "applicant/appConfirm";
	}

	@RequestMapping(value = "confirm", method = RequestMethod.POST)
	public String confirmOk(@RequestParam(value = "appEmail") String appEmail,
			@RequestParam(value = "appPw") String appPw, Model model) {
		String path = confirmOkService.execute(appEmail, appPw, model);
		return path;
	}
}
