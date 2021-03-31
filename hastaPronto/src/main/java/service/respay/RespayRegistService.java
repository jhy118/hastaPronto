package service.respay;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.RespayCommand;
import model.DTO.AuthInfo;
import model.DTO.RespayDTO;
import repository.respay.RespayRepository;

public class RespayRegistService {
	@Autowired
	RespayRepository respayRepository;
	public void execute(RespayCommand respayCommand, HttpSession session) {
		RespayDTO respayDTO = new RespayDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		respayDTO.setUserId(authInfo.getLoginId());
		respayDTO.setRtRvNo(respayCommand.getRtRvNo());
		respayDTO.setRtPmChar(respayCommand.getRtPmChar());
		respayDTO.setRtPmMethod(respayCommand.getRtPmMethod());
		
		respayRepository.insertRespay(respayDTO);
		
	}
}
