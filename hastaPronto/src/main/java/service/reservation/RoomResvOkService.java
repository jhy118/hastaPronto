package service.reservation;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.RoomReservationCommand;
import model.DTO.AuthInfo;
import model.DTO.PaymentRoomDTO;
import model.DTO.ReservationRoomDTO;
import repository.reservation.ReservationRoomRepository;

@Service
@Component
public class RoomResvOkService {
	@Autowired
	ReservationRoomRepository reservationRoomRepository;

	public void execute(RoomReservationCommand roomResv, HttpSession session) {
		ReservationRoomDTO resvDTO = new ReservationRoomDTO();
		Timestamp ckIn = Timestamp.valueOf(roomResv.getCkIn().replace("T", " "));
		resvDTO.setCkIn(ckIn);
		Timestamp ckOut = Timestamp.valueOf(roomResv.getCkOut().replace("T", " "));
		resvDTO.setCkOut(ckOut);
		resvDTO.setRmNo(roomResv.getRmNo());
		resvDTO.setRmExbadnum(roomResv.getRmExbadnum());
		String requirements = "";
		for (String rq : roomResv.getRmRequirements()) {
			requirements += rq + "/";
		}
		resvDTO.setRmRequirements(requirements);
		resvDTO.setRmRvNum(roomResv.getRmRvNum());
		String userId = ((AuthInfo) session.getAttribute("authInfo")).getLoginId();
		resvDTO.setUserId(userId);
		reservationRoomRepository.insertRoomResv(resvDTO);

		PaymentRoomDTO paymentRoomDTO = new PaymentRoomDTO();
		String account = "";
		for (String ra : roomResv.getRmAccount()) {
			account += ra + "/";
		}
		paymentRoomDTO.setRmAccount(account);
		paymentRoomDTO.setRmPmChar(roomResv.getRmPmChar());
		paymentRoomDTO.setUserId(userId);
		reservationRoomRepository.insertPaymentRoom(paymentRoomDTO);
	}
}
