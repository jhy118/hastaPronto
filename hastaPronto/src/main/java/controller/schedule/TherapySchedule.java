package controller.schedule;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.ScheduleCommand;
import command.WedCsCommand;
import service.schedule.TherapyCalendarListService;
import service.schedule.TherapyListService;
import validator.ScheduleCommandValidator;

@Controller
@RequestMapping("schedule/therapy")
public class TherapySchedule {
	@Autowired
	TherapyListService therapyListService;
	@Autowired
	TherapyCalendarListService therapyCalendarListService;

	@RequestMapping("therapyList")
	public String therapyList(Model model, ScheduleCommand scheduleCommand) {
		TherapyCalendarListService.execute(model, scheduleCommand);
		return "schedule/therapy/therapyList";
	}
	@RequestMapping("therapyRvForm")
	public String therapyRvForm(@ModelAttribute("ScheduleCommand") ScheduleCommand scheduleCommand) {
		return "schedule/therapy/therapyRvForm";
	}
	@RequestMapping(value="therapyRvAction", method=RequestMethod.POST)
	public String therapyRvAction(ScheduleCommand scheduleCommand, Errors errors, HttpServletRequest request) {
		new ScheduleCommandValidator().validate(scheduleCommand, errors);
	if(errors.hasErrors()) {
		return "schedule/therapy/therapyRvForm";
		}
	therapyListService.execute(scheduleCommand, request);
	return "redirect:/sschedule/therapy/therapyList";
	}
	
}
