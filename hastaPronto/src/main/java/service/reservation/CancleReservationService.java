package service.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.DTO.AuthInfo;
import model.DTO.PaymentRoomDTO;
import model.DTO.ReservationRoomDTO;
import repository.reservation.ReservationRoomRepository;

@Service
@Component
public class CancleReservationService {
	@Autowired
	ReservationRoomRepository reservationRoomRepository;
	
	public void execute(String rvNo, String pmNo, HttpSession session) {
		ReservationRoomDTO resvRoomDTO = new ReservationRoomDTO();
		String userId = ((AuthInfo)session.getAttribute("authInfo")).getLoginId();
		resvRoomDTO.setRmRvNo(rvNo);
		resvRoomDTO.setUserId(userId);
		PaymentRoomDTO paymentRoomDTO = new PaymentRoomDTO();
		paymentRoomDTO.setRmPmNo(pmNo);
		paymentRoomDTO.setUserId(userId);
		reservationRoomRepository.deleteRoomReservation(resvRoomDTO);
		reservationRoomRepository.deleteRoomPayment(paymentRoomDTO);
	}
}