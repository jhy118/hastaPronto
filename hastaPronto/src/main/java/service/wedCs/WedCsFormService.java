package service.wedCs;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedDTO;
import repository.wedding.WedRepository;

@Service
@Component
public class WedCsFormService {
	@Autowired
	WedRepository wedRepository;
	public void execute(Model model) {
		WedDTO weddingDTO = new WedDTO();
		List<WedDTO> list = wedRepository.getWedList(weddingDTO);
		model.addAttribute("list", list);
	}

}
