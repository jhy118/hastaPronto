package service.wedding;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.DTO.WedDTO;
import repository.wedding.WedRepository;

@Service
@Component
public class WedBroDelService {
	@Autowired
	WedRepository wedRepository;
	public void execute(String wedNo, HttpSession session) {
		//사진 정보 가져오기
		String filePath = session.getServletContext()
								.getRealPath("WEB-INF/view/wedding/upload");
		WedDTO wedDTO = new WedDTO();
		wedDTO.setWedNo(wedNo);
		List<WedDTO> list = wedRepository.getWedList(wedDTO);
		
		
		//사진 삭제
		if(list.get(0).getWedFile() != null) {
			String[] store = list.get(0).getWedFile().split("`");
			for(String f : store) {
				File file = new File(filePath + "/" + f);
				file.delete();
			}
		}
		wedRepository.wedBroDelete(wedNo);
	}

}
