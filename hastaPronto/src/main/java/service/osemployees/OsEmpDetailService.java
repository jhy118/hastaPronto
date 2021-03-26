package service.osemployees;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.OsEmpDTO;
import repository.osemployees.OsEmpRepository;

public class OsEmpDetailService {
	@Autowired
	OsEmpRepository osEmpRepository;
	public void execute(String oesNo, Model model) {
		OsEmpDTO osEmpDTO = new OsEmpDTO();
		osEmpDTO.setOseNo(oesNo);
		List<OsEmpDTO> list = osEmpRepository.getOsEmpList(osEmpDTO);
		model.addAttribute("osemp", list.get(0));
		
	}
	
}
