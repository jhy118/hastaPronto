package service.reservation;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.AuthInfo;
import model.DTO.ReservationRoomDTO;
import repository.reservation.ReservationRoomRepository;

@Service
@Component
public class ReservedListService {
	@Autowired
	ReservationRoomRepository reservationRoomRepository;

	public void execute(HttpSession session, Model model) {
		String userId = ((AuthInfo)session.getAttribute("authInfo")).getLoginId();
		ReservationRoomDTO resvRoomDTO = new ReservationRoomDTO();
		resvRoomDTO.setUserId(userId);
		List<ReservationRoomDTO> list = reservationRoomRepository.getRoomResv(resvRoomDTO);
		Integer count = reservationRoomRepository.getCount(resvRoomDTO);
		model.addAttribute("resvRoom", list);
		model.addAttribute("count", count);
	}
}