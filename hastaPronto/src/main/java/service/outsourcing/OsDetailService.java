package service.outsourcing;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.OsDTO;
import repository.outsourcing.OsRepository;

public class OsDetailService {
	@Autowired
	OsRepository osRepository;
	public void execute(String osNo, Model model) {
		OsDTO osDTO = new OsDTO();
		osDTO.setOsNo(osNo);
		List<OsDTO> list = osRepository.getOsList(osDTO);
		model.addAttribute("os", list.get(0));
	}
	
}
