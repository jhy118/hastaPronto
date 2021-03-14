package controller.department;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="dept")
public class DepartmentController {
	
	@RequestMapping(value="deptList", method=RequestMethod.GET)
	public String Department() {
		return "department/deptList";
	}
}
