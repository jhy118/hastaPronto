package service.wedPay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.WedPayDTO;
import repository.wedPay.WedPayRepository;

@Service
@Component
public class WedPmListService {
	@Autowired
	WedPayRepository wedPayRepository;
	public void execute(Model model) {
		WedPayDTO wedPayDTO = new WedPayDTO();
		List<WedPayDTO> list = wedPayRepository.getWedPayList(wedPayDTO);
		model.addAttribute("list", list);
	}

}
