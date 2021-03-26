package service.room;

import java.io.File;
import java.io.IOException;
import java.util.List;
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
public class RoomModifyService {
	@Autowired
	RoomRepository roomRepository;

	public String execute(RoomCommand roomCommand, HttpSession session) {
		RoomDTO roomDTO = new RoomDTO();
		roomDTO.setRmNo(roomCommand.getRmNo());
		roomDTO = roomRepository.getRoomList(roomDTO).get(0);
		roomDTO.setRmChar(roomCommand.getRmChar());
		roomDTO.setRmName(roomCommand.getRmName());
		roomDTO.setRmContent(roomCommand.getRmContent());
		roomDTO.setRmPaycontent(roomCommand.getRmPaycontent());

		String realPath = session.getServletContext().getRealPath("WEB-INF/view/room/upload");
		List<String> list = (List<String>) session.getAttribute("imgList");
		if (list != null && roomDTO.getRmFile() != null) {
			for (String ls : list) {
				roomDTO.setRmFile(roomDTO.getRmFile().replace(ls + "`", ""));
				File file = new File(realPath + "/" + ls);
				if (file.exists()) {
					file.delete();
				}
			}
		}

		if (!roomCommand.getRmFile()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : roomCommand.getRmFile()) {
				String origin = mf.getOriginalFilename();
				String extention = origin.substring(origin.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + extention;
				roomDTO.setRmFile((roomDTO.getRmFile() + store + "`").replace("null", ""));
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
		if (roomDTO.getRmFile() == "") {
			roomDTO.setRmFile(null);
		}
		Integer result = roomRepository.updateRoom(roomDTO);
		if (result == 1) {
			return "redirect:/room/roomInfo/" + roomCommand.getRmNo();
		}
		return "room/roomModify";
	}
}
