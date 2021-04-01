package controller.main;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.room.RoomListService;

@Controller
@RequestMapping("main")
public class MainController {
	@Autowired
	RoomListService roomListService;
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String main(Model model) {
		roomListService.execute(model);
		return "main/main";
	}
}
