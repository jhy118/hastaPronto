package controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("emp")
public class EmployeeController {
	@RequestMapping(value = "empList", method = RequestMethod.GET)
	public String empList() {
		return "employee/empList";
	}
	
	@RequestMapping(value="empForm", method = RequestMethod.GET)
	public String empForm() {
		return "employee/empFom";
	}
}
