package service.resSt;

import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.ResStDTO;
import repository.resSt.ResStRepository;

public class ResStQtyDownService {
	@Autowired
	ResStRepository resStRepository;
	
	
	public void execute(String rtMenuNo, String rtRvNo) {
		ResStDTO resStDTO = new ResStDTO();
		resStDTO.setRtMenuNo(rtMenuNo);
		resStDTO.setRtRvNo(rtRvNo);
		
		resStRepository.resStQtyDown(resStDTO);
	
		
	}
}
