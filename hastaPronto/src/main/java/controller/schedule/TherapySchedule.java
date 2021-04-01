package controller.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.ScheduleCommand;
import service.schedule.TherapyCalendarListService;
import service.schedule.TherapyDeleteService;
import service.schedule.TherapyListOkService;
import service.schedule.TherapyListService;
import service.schedule.ThrapyDetailService;
import service.schedule.ThrapyUpdateService;
import service.schedule.therapyRvFormService;
import validator.ScheduleCommandValidator;

@Controller
@RequestMapping("schedule/therapy")
public class TherapySchedule {
	@Autowired
	TherapyListService therapyListService;
	@Autowired
	TherapyCalendarListService therapyCalendarListService;
	@Autowired
	TherapyListOkService therapyListOkService;
	@Autowired
	ThrapyUpdateService thrapyUpdateService;
	@Autowired
	therapyRvFormService therapyRvFormService;
	@Autowired
	TherapyDeleteService therapyDeleteService;
	@Autowired
	ThrapyDetailService thrapyDetailService;

	
	@RequestMapping("therapyDelete/{schNo}")
	public String therapyDelete(
			@PathVariable(value="schNo") String schNo) {
		therapyDeleteService.execute(schNo);
		return "redirect:/schedule/therapy/therapyListOk";
	}
	@RequestMapping("therapyModifyPro")
	public String therapyModifyPro(ScheduleCommand scheduleCommand, HttpSession session) {
		thrapyUpdateService.execute(scheduleCommand, session);
		return "redirect:therapyDetail?schNo="+scheduleCommand.getSchNo();
	}
	@RequestMapping("therapyModify/{schNo}")
	public String therapyModify(
			@PathVariable(value="schNo") String schNo, Model model) {
		thrapyDetailService.execute(schNo, model);
		return "schedule/therapy/therapyModify";
	}
	@RequestMapping("therapyDetail")
	public String therapyDetail(
			@RequestParam(value="schNo") String schNo, Model model) {
		thrapyDetailService.execute(schNo, model);
		return "schedule/therapy/therapyDetail";
	}
	@RequestMapping("therapyListOk")
	public String therapyListOk(
			@RequestParam(value="page", defaultValue="1") Integer page, Model model) {
		therapyListOkService.execute(model,page);
		return "schedule/therapy/therapyListOk";
	}
	@RequestMapping("therapyList")
	public String therapyList(Model model, ScheduleCommand scheduleCommand) {
		TherapyCalendarListService.execute(model, scheduleCommand);
		return "schedule/therapy/therapyList";
	}
	@RequestMapping("therapyRvForm")
	public String therapyRvForm(ScheduleCommand scheduleCommand, Model model) {
		therapyRvFormService.execute(scheduleCommand, model);
		return "schedule/therapy/therapyRvForm";
	}
	@RequestMapping(value="therapyRvAction", method=RequestMethod.POST)
	public String therapyRvAction(ScheduleCommand scheduleCommand, Errors errors, HttpServletRequest request) {
		new ScheduleCommandValidator().validate(scheduleCommand, errors);
	if(errors.hasErrors()) {
		return "schedule/therapy/therapyRvForm";
		}
	therapyListService.execute(scheduleCommand, request);
	return "redirect:/schedule/therapy/therapyList";
	}
	
}
