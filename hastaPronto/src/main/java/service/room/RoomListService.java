package service.room;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.RoomDTO;
import repository.room.RoomRepository;

@Service
@Component
public class RoomListService {
	@Autowired
	RoomRepository roomRepository;
	
	public void execute(Model model) {
		RoomDTO roomDTO = new RoomDTO();
		List<RoomDTO> list = roomRepository.getRoomList(roomDTO);
		model.addAttribute("roomList",list);
	}
}
