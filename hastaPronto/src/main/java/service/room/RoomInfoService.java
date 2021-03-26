package service.room;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.RoomDTO;
import repository.room.RoomRepository;

@Service
@Component
public class RoomInfoService {
	@Autowired
	RoomRepository roomRepository;

	public void execute(String rmNo, Model model) {
		RoomDTO roomDTO = new RoomDTO();
		roomDTO.setRmNo(rmNo);
		roomDTO = roomRepository.getRoomList(roomDTO).get(0);
		model.addAttribute("room", roomDTO);
	}
}
