package service.wedPay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.WedPayDTO;
import repository.wedPay.WedPayRepository;

public class WedPayOkService {
	@Autowired
	WedPayRepository wedPayRepository;
	public void execute(String wedPmMethod, double wedPmChar, Model model, 
			String wedRvNo, String userId) {
		WedPayDTO wedPayDTO = new WedPayDTO();
		wedPayDTO.setWedPmMethod(wedPmMethod);
		wedPayDTO.setWedRvNo(wedRvNo);
		wedPayDTO.setWedPmChar(wedPmChar);
		wedPayDTO.setUserId(userId);
		wedPayRepository.wedPayInsert(wedPayDTO);
		
		List<WedPayDTO> list = wedPayRepository.getWedPayList(wedPayDTO);
		model.addAttribute("list", list.get(0));
	}

}
