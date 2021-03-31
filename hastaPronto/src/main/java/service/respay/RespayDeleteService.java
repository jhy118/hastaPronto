package service.respay;

import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.RespayDTO;
import repository.respay.RespayRepository;

public class RespayDeleteService {
	@Autowired
	RespayRepository respayRepository;
	public void execute(String rtRvNo) {
		RespayDTO respayDTO = new RespayDTO();
		respayDTO.setRtRvNo(rtRvNo);
		
		respayRepository.deleteRespay(rtRvNo);
	}
}
