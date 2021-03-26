package service.wedRes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.WedResDTO;
import repository.wedRt.WedRtRepository;

public class WedRtInfoService {
	@Autowired
	WedRtRepository wedRtRepository;
	public void execute(String wedRtNo, Model model) {
		WedResDTO wedResDTO = new WedResDTO();
		wedResDTO.setWedRtNo(wedRtNo);
		List<WedResDTO> list = wedRtRepository.getWedRtList(wedResDTO);
		model.addAttribute("list", list.get(0));
	}

}
