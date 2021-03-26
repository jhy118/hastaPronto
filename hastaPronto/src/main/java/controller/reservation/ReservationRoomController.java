package controller.reservation;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import service.reservation.ReservationRoomListService;

@Controller
@RequestMapping(value = "reservationRoom")
public class ReservationRoomController {
	@Autowired
	ReservationRoomListService reservationRoomListService;
	
	@RequestMapping(value = "roomList", method = RequestMethod.GET)
	public String roomList(@RequestParam(value="chIn", defaultValue = "null")String chIn,Model model) {
		reservationRoomListService.execute(model);
		return "reservationRoom/roomList";
	}
}
