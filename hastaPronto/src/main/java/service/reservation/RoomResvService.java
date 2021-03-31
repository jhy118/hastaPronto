package service.reservation;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.RoomReservationCommand;
import model.DTO.RoomDTO;
import repository.room.RoomRepository;

@Service
@Component
public class RoomResvService {
	@Autowired
	RoomRepository roomRepository;

	public void execute(RoomReservationCommand roomReservationCommand, Model model) {
		RoomDTO roomDTO = new RoomDTO();
		roomDTO.setRmNo(roomReservationCommand.getRmNo());
		roomDTO = roomRepository.getRoomList(roomDTO).get(0);
		
		model.addAttribute("room", roomDTO);
		model.addAttribute("roomResv", roomReservationCommand);
	}
}