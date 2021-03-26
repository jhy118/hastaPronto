package controller.room;

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

import command.RoomCommand;
import service.ImgDelService;
import service.room.RoomDeleteService;
import service.room.RoomInfoService;
import service.room.RoomListService;
import service.room.RoomModifyService;
import service.room.RoomRegistService;
import validator.RoomCommandValidator;

@Controller
@RequestMapping(value = "room")
public class RoomController {
	@Autowired
	RoomRegistService roomRegistService;
	@Autowired
	RoomListService roomListService;
	@Autowired
	RoomInfoService roomInfoService;
	@Autowired
	ImgDelService imgDelService;
	@Autowired
	RoomModifyService roomModifyService;
	@Autowired
	RoomDeleteService roomDeleteService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String room(Model model) {
		roomListService.execute(model);
		return "room/room";
	}

	@RequestMapping(value = "roomRegist", method = RequestMethod.GET)
	public String roomForm(Model model) {
		model.addAttribute("room", new RoomCommand());
		return "room/roomRegist";
	}

	@RequestMapping(value = "roomRegist", method = RequestMethod.POST)
	public String roomRegist(@ModelAttribute(value = "room") RoomCommand roomCommand, Errors errors,
			HttpSession session) {
		new RoomCommandValidator().validate(roomCommand, errors);
		if (errors.hasErrors()) {
			return "room/roomRegist";
		}
		String path = roomRegistService.execute(roomCommand, session);
		return path;
	}

	@RequestMapping(value = "roomInfo/{id}", method = RequestMethod.GET)
	public String roomInfo(@PathVariable(value = "id") String rmNo, Model model) {
		roomInfoService.execute(rmNo, model);
		return "room/roomInfo";
	}

	@RequestMapping(value = "roomModify/{id}", method = RequestMethod.GET)
	public String roomModify(@PathVariable(value = "id") String rmNo, Model model) {
		roomInfoService.execute(rmNo, model);
		return "room/roomModify";
	}

	@RequestMapping(value = "roomModify/{id}", method = RequestMethod.POST)
	public String roomModifyOk(@ModelAttribute(value = "room") RoomCommand roomCommand, HttpSession session) {
		String path = roomModifyService.execute(roomCommand, session);
		return path;
	}

	@RequestMapping(value = "imgDel", method = RequestMethod.POST)
	public String imgDel(@RequestParam(value = "imgfile") String imgfile, Model model, HttpSession session) {
		imgDelService.imgDel(imgfile, model, session);
		return "include/fileDel";
	}
	
	@RequestMapping(value = "roomDelete/{id}", method = RequestMethod.GET)
	public String roomDelete(@PathVariable(value = "id")String rmNo, HttpSession session) {
		roomDeleteService.execute(rmNo, session);
		return "redirect:/room/";
	}
}
