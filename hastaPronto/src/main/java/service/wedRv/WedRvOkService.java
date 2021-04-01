package service.wedRv;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.WedRvCommand;
import model.DTO.AuthInfo;
import model.DTO.WedRvDTO;
import repository.wedRv.WedRvRepository;

public class WedRvOkService {
	@Autowired
	WedRvRepository wedRvRepository;
	public void execute(WedRvCommand wedRvCommand, HttpSession session) {
		WedRvDTO wedRvDTO = new WedRvDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		wedRvDTO.setUserId(authInfo.getLoginId());
		
//		wedRvDTO.setWedCosNo(wedRvCommand.getWedCosNo());
		wedRvDTO.setWedNo(wedRvCommand.getWedNo());
		wedRvDTO.setWedRtNo(wedRvCommand.getWedRtNo());
		wedRvDTO.setWedRvChar(wedRvCommand.getWedRvChar());
		wedRvDTO.setWedRvTime(wedRvCommand.getWedRvTime().trim());
		wedRvDTO.setWedRvNo(wedRvCommand.getWedRvNo());
		wedRvDTO.setWedRvNum(wedRvCommand.getWedRvNum());
		
		//스케줄
		wedRvDTO.setnDay(wedRvCommand.getnDay());
		wedRvDTO.setnMonth(wedRvCommand.getnMonth());
		wedRvDTO.setnYear(wedRvCommand.getnYear());
		
		
		System.out.println(authInfo.getLoginId());
		//System.out.println(wedRvCommand.getWedCosNo()); //
		System.out.println(wedRvCommand.getWedNo());
		System.out.println(wedRvCommand.getWedRtNo());
		System.out.println(wedRvCommand.getWedRvChar()); //
		System.out.println(wedRvCommand.getWedRvTime().trim());
		System.out.println(wedRvCommand.getWedRvNo()); //
		System.out.println(wedRvCommand.getnDay());
		System.out.println(wedRvCommand.getnMonth());
		System.out.println(wedRvCommand.getnYear());
		wedRvRepository.wedRvInsert(wedRvDTO);
	}

}
