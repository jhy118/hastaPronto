package service.resSt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.ResStCommand;
import model.DTO.AuthInfo;
import model.DTO.ResStDTO;
import repository.resSt.ResStRepository;


public class ResRtRegistService {
	@Autowired
	ResStRepository resStRepository;
	public void execute(ResStCommand resStCommand, HttpSession session) {
		ResStDTO resStDTO = new ResStDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		resStDTO.setUserId(authInfo.getLoginId());
		resStDTO.setRtMenuNo(resStCommand.getRtMenuNo());
		resStDTO.setRtRvNo(resStCommand.getRtRvNo());
		
		resStRepository.insertResSt(resStDTO);
	}

}
