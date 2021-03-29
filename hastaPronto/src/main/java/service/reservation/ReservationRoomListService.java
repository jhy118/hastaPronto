package service.reservation;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.ReservationRoomDTO;
import model.DTO.RoomDTO;
import repository.reservation.ReservationRoomRepository;
import repository.room.RoomRepository;

@Service
@Component
public class ReservationRoomListService {
	@Autowired
	RoomRepository roomRepository;
	@Autowired
	ReservationRoomRepository reservationRoomRepository;

	public void execute(Model model, String ckIn, String ckOut) {

		Calendar cal = Calendar.getInstance();
		Integer year = cal.get(Calendar.YEAR);
		Integer month = cal.get(Calendar.MONTH) + 1;
		Integer day = cal.get(Calendar.DATE);
		cal.set(Calendar.DATE, 1);
		Integer firstWeekDay = cal.get(Calendar.DAY_OF_WEEK);
		Integer lastDay = cal.getActualMaximum(Calendar.DATE);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("firstWeekDay", firstWeekDay);
		model.addAttribute("lastDay", lastDay);
		cal.set(Calendar.MONTH, month);
		firstWeekDay = cal.get(Calendar.DAY_OF_WEEK);
		model.addAttribute("nextFstDay", firstWeekDay);
		lastDay = cal.getActualMaximum(Calendar.DATE);
		model.addAttribute("nextLastDay", lastDay);
		model.addAttribute("ckIn", ckIn);
		model.addAttribute("ckOut", ckOut);
		if (!ckIn.equals("null")) {
			List<String> roomNo = roomRepository.getRoomNo();
			List<RoomDTO> vcRoom = new ArrayList<RoomDTO>();
			ckIn = ckIn.replace("T", " ");
			Timestamp ckeckIn = Timestamp.valueOf(ckIn);
			for (String rmNo : roomNo) {
				ReservationRoomDTO rrDTO = new ReservationRoomDTO();
				rrDTO.setRmNo(rmNo);
				rrDTO.setCkIn(ckeckIn);
				RoomDTO roomDTO = reservationRoomRepository.getVacancy(rrDTO);
				vcRoom.add(roomDTO);
			}
			model.addAttribute("vcRoom", vcRoom);
		}
	}
}