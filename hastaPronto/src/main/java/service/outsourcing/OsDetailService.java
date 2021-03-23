package service.outsourcing;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.OsDTO;
import model.DTO.OsFileDTO;
import repository.outsourcing.OsRepository;

public class OsDetailService {
	@Autowired
	OsRepository osRepository;
	public void execute(String osNo, Model model) {
		OsDTO osDTO = new OsDTO();
		osDTO.setOsNo(osNo);
		List<OsDTO> list = osRepository.getOsList(osDTO);
		model.addAttribute("os", list.get(0));
		
		OsFileDTO osFileDTO = new OsFileDTO();
		osFileDTO.setOsFilenum(osNo);
		List<OsFileDTO> lists = osRepository.getOsFileList(osFileDTO);
		model.addAttribute("osFile", lists.get(0));
		
	}
}
