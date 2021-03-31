package controller.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.schedule.TherapyListService;

@Controller
@RequestMapping("schedule")
public class TherapySchedule {
//	@Autowired
//	TherapyListService therapyListService;
	
	@RequestMapping(value = "therapyList", method = RequestMethod.GET)
	public String therapy() {
//		therapyListService.execute(page, model);
		return "schedule/therapy/therapyList";
	}
//	@RequestParam(value="page", defaultValue = "1") Integer page, Model model
	@RequestMapping("therapyRvForm")
	public String therapyRvForm() {
		return "schedule/therapy/therapyRvForm";
	}
}
