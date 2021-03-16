package service.announcement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.AnnDTO;
import repository.announcement.AnnRepository;

@Service
public class AnnDetailService {
	@Autowired
	AnnRepository annRepository;
	public void execute(String annNo, Model model) {
		AnnDTO annDTO = new AnnDTO();
		annDTO.setAnnNo(annNo);
		List<AnnDTO> list = annRepository.getAnnList(annDTO);
		model.addAttribute("ann", list.get(0));
	}
}
