package service.wedRes;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedResDTO;
import repository.wedRt.WedRtRepository;

@Service
@Component
public class WedRtListService {
	@Autowired
	WedRtRepository wedRtRepository;
	public void execute(Model model) {
		WedResDTO wedResDTO = new WedResDTO();
		List<WedResDTO> list = wedRtRepository.getWedRtList(wedResDTO);
		model.addAttribute("list", list);
	}

}
