package service.resrv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.DTO.ResrvDTO;
import repository.resrv.ResrvRepository;

@Service
public class ResrvDeleteService {
	@Autowired
	ResrvRepository resrvRepository;
	public void execute(String rtRvNo) {
		ResrvDTO resrvDTO = new ResrvDTO();
		resrvDTO.setRtRvNo(rtRvNo);
		
		resrvRepository.deleteResrv(rtRvNo);
	}
	
}
