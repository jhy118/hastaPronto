package service.resrv;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.ResrvCommand;
import model.DTO.AuthInfo;
import model.DTO.ResrvDTO;
import repository.resrv.ResrvRepository;

@Service
public class ResrvModifyService {
	@Autowired 
	ResrvRepository resrvRepository;
	public void execute(ResrvCommand resrvCommand, HttpSession session) {
		ResrvDTO resrvDTO = new ResrvDTO();
		resrvDTO.setRtRvNo(resrvCommand.getRtRvNo());
		resrvDTO.setRtRvTnum(resrvCommand.getRtRvTnum());
		resrvDTO.setRtrvNum(resrvCommand.getRtrvNum());
		String rvTime = resrvCommand.getRtRvDay() + resrvCommand.getRtRvTime();
		Timestamp ts = Timestamp.valueOf(rvTime);
		resrvDTO.setRtRvTime(ts);
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		resrvDTO.setUserId(authInfo.getLoginId());
		
		resrvRepository.updateResrv(resrvDTO);
	}
}
