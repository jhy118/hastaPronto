package service.resSt;

import javax.servlet.http.HttpSession;

import command.ResStCommand;
import model.DTO.AuthInfo;
import model.DTO.ResStDTO;
import model.DTO.ResmenuDTO;

public class ResRtRegistService {

	public void execute(ResStCommand resStCommand, HttpSession session) {
		ResStDTO resStDTO = new ResStDTO();
		ResmenuDTO resmenuDTO = new ResmenuDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		resStDTO.setUserId(resStCommand.getUserId());
//		resStDTO.setOderSnum(resStCommand.getOderSnum());
		resStDTO.setOderSchar(resStCommand.getOderSchar());
		resStDTO.setRtMenuNo(resStCommand.getRtMenuNo());
		resStDTO.setRtRvNo(resStCommand.getRtRvNo());
		
//		resmenuDTO.setRtMenu(rtMenu);
	}

}
