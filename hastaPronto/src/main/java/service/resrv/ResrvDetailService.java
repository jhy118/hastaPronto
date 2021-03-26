package service.resrv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.ResrvDTO;
import repository.resrv.ResrvRepository;

@Service
public class ResrvDetailService {
	@Autowired
	ResrvRepository resrvRepository;
	public void execute(Model model, String rtRvNo) {
		ResrvDTO resrvDTO = new ResrvDTO();
		resrvDTO.setRtRvNo(rtRvNo);
		resrvDTO = resrvRepository.selectResrv(resrvDTO).get(0);
		model.addAttribute("resrv", resrvDTO);
		
	}
}
