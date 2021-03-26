package service.wedding;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedDTO;
import repository.wedding.WedRepository;

@Service
@Component
public class WedBroListService {
	@Autowired
	WedRepository wedRepository;
	public void execute(Integer page, Model model) {
		WedDTO wedDTO = new WedDTO();
		List<WedDTO> list = wedRepository.getWedList(wedDTO);
		model.addAttribute("list", list);
	}

}
