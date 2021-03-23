package service.goodsPaySt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.OsDTO;
import repository.outsourcing.OsRepository;

@Service
@Component
public class GoodsPayStWriteService {
	@Autowired
	OsRepository osRepository;
	public void execute(Model model) {
		OsDTO osDTO = new OsDTO();
		List<OsDTO> list = osRepository.getOsList(osDTO);
		model.addAttribute("osList", list);
	}

}
