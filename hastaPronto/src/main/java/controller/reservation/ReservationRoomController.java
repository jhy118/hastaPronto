package controller.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.reservation.ReservationRoomListService;
import service.reservation.RoomResvService;

@Controller
@RequestMapping(value = "reservationRoom")
public class ReservationRoomController {
	@Autowired
	ReservationRoomListService reservationRoomListService;
	@Autowired
	RoomResvService roomResvService;
	
	@RequestMapping(value = "roomList", method = RequestMethod.GET)
	public String roomList(@RequestParam(value="ckIn", defaultValue = "null")String ckIn,Model model,
			@RequestParam(value = "ckOut", defaultValue = "null")String ckOut) {
		reservationRoomListService.execute(model, ckIn, ckOut);
		return "reservationRoom/roomList";
	}
	
	@RequestMapping(value = "roomResv")
	public String roomResv(@RequestParam(value="rmNo")String rmNo,
			@RequestParam(value="ckIn", defaultValue = "null")String ckIn,
			@RequestParam(value = "ckOut", defaultValue = "null")String ckOut) {
		roomResvService.execute(rmNo, ckIn);
		return "";
	}
}
