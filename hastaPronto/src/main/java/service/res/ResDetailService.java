package service.res;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.ResDTO;
import repository.res.ResRepository;

@Service
public class ResDetailService {
	@Autowired
	ResRepository resRepository;
	public void execute(Model model, String rtNo) {
		ResDTO resDTO = new ResDTO();
		resDTO.setRtNo(rtNo);
		resDTO = resRepository.selectRes(resDTO).get(0);
		model.addAttribute("res", resDTO);
	}
}
