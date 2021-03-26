package service.room;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.DTO.RoomDTO;
import repository.room.RoomRepository;

@Service
@Component
public class RoomDeleteService {
	@Autowired
	RoomRepository roomRepository;

	public void execute(String rmNo, HttpSession session) {
		RoomDTO roomDTO = new RoomDTO();
		roomDTO.setRmNo(rmNo);
		roomDTO = roomRepository.getRoomList(roomDTO).get(0);
		if (roomDTO.getRmFile() != null) {
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/room/upload");
			for (String rmFile : roomDTO.getRmFile().split("`")) {
				File file = new File(realPath + "/" + rmFile);
				if (file.exists())
					file.delete();
			}
		}
		roomRepository.deleteRoom(roomDTO);
	}
}
