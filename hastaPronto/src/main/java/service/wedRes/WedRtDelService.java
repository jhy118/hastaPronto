package service.wedRes;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.WedResDTO;
import repository.wedRt.WedRtRepository;

public class WedRtDelService {
	@Autowired
	WedRtRepository wedRtRepository;
	public void execute(String wedRtNo, HttpSession session) {
		//사진 정보 가져오기
		String filePath = session.getServletContext()
				.getRealPath("WEB-INF/view/wedRes/upload");
		WedResDTO wedResDTO = new WedResDTO();
		wedResDTO.setWedRtNo(wedRtNo);
		List<WedResDTO> list = wedRtRepository.getWedRtList(wedResDTO);
		
		//사진 삭제
		if(list.get(0).getWedRtFile() != null) {
			String[] store = list.get(0).getWedRtFile().split("`");
			for(String f : store) {
				File file = new File(filePath + "/" + f);
				file.delete();
			}
		}
		wedRtRepository.wedRtDelete(wedRtNo);
	}

}
