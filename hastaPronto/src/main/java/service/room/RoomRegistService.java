package service.room;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.RoomCommand;
import model.DTO.RoomDTO;
import repository.room.RoomRepository;

@Service
@Component
public class RoomRegistService {
	@Autowired
	RoomRepository roomRepository;

	public String execute(RoomCommand roomCommand, HttpSession session) {
		RoomDTO roomDTO = new RoomDTO();
		roomDTO.setRmChar(roomCommand.getRmChar());
		roomDTO.setRmContent(roomCommand.getRmContent());
		roomDTO.setRmName(roomCommand.getRmName());
		roomDTO.setRmPaycontent(roomCommand.getRmPaycontent());
		String path = "WEB-INF/view/room/upload";
		String realPath = session.getServletContext().getRealPath(path);
		String img = "";
		if (!roomCommand.getRmFile()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : roomCommand.getRmFile()) {
				String original = mf.getOriginalFilename();
				String extention = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + extention;
				img += store + "`";
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		if (img.equals(""))
			img = null;
		roomDTO.setRmFile(img);
		Integer result = roomRepository.insertRoom(roomDTO);
		if (result == 1) {
			return "redirect:/room/";
		}
		return "room/roomRegist";
	}
}