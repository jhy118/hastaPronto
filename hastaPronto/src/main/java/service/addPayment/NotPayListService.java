package service.addPayment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.ReservationRoomDTO;
import repository.addPayment.AddPaymentRepository;
import repository.reservation.ReservationRoomRepository;

@Service
@Component
public class NotPayListService {
	@Autowired
	AddPaymentRepository addPaymentRepository;
	@Autowired
	ReservationRoomRepository reservationRoomRepository;

	public void execute(Model model) {
		List<String> rvNoList = addPaymentRepository.getRvNo();
		List<ReservationRoomDTO> list = reservationRoomRepository.getNoPayedList(rvNoList);
		model.addAttribute("noPayList",list);
	}
}
