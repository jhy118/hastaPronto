package controller.schedule;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("schedule")
public class ScheduleController {	
	@RequestMapping(value="main", method = RequestMethod.GET)
	public String schedule() {
		return "schedule/main";
	}
	
	
}
