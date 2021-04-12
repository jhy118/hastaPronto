package controller.reservation;

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

import command.RoomReservationCommand;
import service.reservation.CancleReservationService;
import service.reservation.ReservationDetailService;
import service.reservation.ReservationRoomListService;
import service.reservation.ReservedListService;
import service.reservation.RoomResvOkService;
import service.reservation.RoomResvService;
import service.room.RoomListService;
import validator.RoomReservationCommandValidator;

@Controller
@RequestMapping(value = "reservationRoom")
public class ReservationRoomController {
	@Autowired
	ReservationRoomListService reservationRoomListService;
	@Autowired
	RoomResvService roomResvService;
	@Autowired
	RoomResvOkService roomResvOkService;
	@Autowired
	ReservedListService reservedListService;
	@Autowired
	ReservationDetailService reservationDetailService;
	@Autowired
	CancleReservationService cancleReservationService;
	@Autowired
	RoomListService roomListService;

	@RequestMapping(value = "roomList", method = RequestMethod.GET)
	public String roomList(@RequestParam(value = "ckIn", defaultValue = "null") String ckIn, Model model,
			@RequestParam(value = "ckOut", defaultValue = "null") String ckOut) {
		reservationRoomListService.execute(model, ckIn, ckOut);
		return "reservationRoom/roomList";
	}

	@RequestMapping(value = "roomResv", method = RequestMethod.GET)
	public String roomResv(@RequestParam(value = "rmNo") String rmNo,
			@RequestParam(value = "ckIn", defaultValue = "null") String ckIn,
			@RequestParam(value = "ckOut", defaultValue = "null") String ckOut, Model model) {
		RoomReservationCommand roomReservationCommand = new RoomReservationCommand();
		roomReservationCommand.setCkIn(ckIn);
		roomReservationCommand.setCkOut(ckOut);
		roomReservationCommand.setRmNo(rmNo);
		roomResvService.execute(roomReservationCommand, model);
		return "reservationRoom/roomResv";
	}

	@RequestMapping(value = "roomResv", method = RequestMethod.POST)
	public String roomResvOk(@ModelAttribute(value = "roomResv") RoomReservationCommand roomResv, Errors errors,
			Model model, HttpSession session) {
		new RoomReservationCommandValidator().validate(roomResv, errors);
		if (errors.hasErrors()) {
			roomResvService.execute(roomResv, model);
			return "reservationRoom/roomResv";
		}
		roomResvOkService.execute(roomResv, session);
		return "reservationRoom/resvComplete";
	}

	@RequestMapping(value = "reservedList", method = RequestMethod.GET)
	public String resvInfo(HttpSession session, Model model) {
		reservedListService.execute(session, model);
		return "reservationRoom/reservedRoomList";
	}

	@RequestMapping(value = "reservationDetail/{id}", method = RequestMethod.GET)
	public String reservationDetail(@PathVariable(value = "id") String rmRvNo, Model model, HttpSession session) {
		reservationDetailService.execute(rmRvNo, model, session);
		return "reservationRoom/reservationDetail";
	}

	@RequestMapping(value = "cancleReservation", method = RequestMethod.GET)
	public String cancleReservation(@RequestParam(value = "rvNo") String rvNo,
			@RequestParam(value = "pmNo") String pmNo, HttpSession session) {
		cancleReservationService.execute(rvNo, pmNo, session);
		return "redirect:/reservationRoom/reservedList";
	}
}