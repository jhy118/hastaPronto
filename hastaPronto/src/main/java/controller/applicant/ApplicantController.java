package controller.applicant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ApplicantCommand;
import service.applicant.ApplicantSubmitService;
import validator.ApplicantCommandValidator;

@Controller
@RequestMapping(value = "apc")
public class ApplicantController {
	@Autowired
	ApplicantSubmitService applicantSubmitService;

	@RequestMapping(value = "applicant", method = RequestMethod.GET)
	public String applicant() {
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
		return "applicant/applicantList";
	}

}
