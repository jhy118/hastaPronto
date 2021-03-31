package service.addPayment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.GoodsDTO;
import model.DTO.ReservationRoomDTO;
import repository.goods.GoodsRepository;
import repository.reservation.ReservationRoomRepository;

@Service
@Component
public class AddPaymentService {
	@Autowired
	ReservationRoomRepository reservationRoomRepository;
	@Autowired
	GoodsRepository goodsRepository;

	public void execute(String rmRvNo, Model model) {
		ReservationRoomDTO resvRoomDTO = new ReservationRoomDTO();
		resvRoomDTO.setRmRvNo(rmRvNo);
		resvRoomDTO = reservationRoomRepository.getRoomResv(resvRoomDTO).get(0);
		model.addAttribute("resv", resvRoomDTO);
		List<GoodsDTO> goodsList = goodsRepository.getGoodsList(new GoodsDTO());
		model.addAttribute("goodsList", goodsList);
	}
}
