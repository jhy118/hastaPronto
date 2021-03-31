package service.reservation;

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
public class ReservationDetailService {
	@Autowired
	ReservationRoomRepository reservationRoomRepository;
	public void execute(String rmRvNo, Model model, HttpSession session) {
		ReservationRoomDTO resvDTO = new ReservationRoomDTO();
		resvDTO.setRmRvNum(Long.parseLong(rmRvNo));
		resvDTO.setUserId(((AuthInfo)session.getAttribute("authInfo")).getLoginId());
		resvDTO = reservationRoomRepository.getRoomResv(resvDTO).get(0);
		model.addAttribute("resv", resvDTO);
	}
}
