package service.resrv;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.ResrvCommand;
import model.DTO.AuthInfo;
import model.DTO.ResrvDTO;
import repository.resrv.ResrvRepository;

@Service
@Component
public class ResrvRegistService {
	@Autowired
	ResrvRepository resrvRepository;
	public void execute(ResrvCommand resrvCommand, HttpSession session) {
		ResrvDTO resrvDTO = new ResrvDTO();
		resrvDTO.setRtrvNum(resrvCommand.getRtrvNum());
		resrvDTO.setRtRvTnum(resrvCommand.getRtRvTnum());
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		resrvDTO.setUserId(authInfo.getLoginId());
		resrvDTO.setRtNo(resrvCommand.getRtNo());
		String rvTime = resrvCommand.getRtRvDay() + resrvCommand.getRtRvTime();
		Timestamp ts = Timestamp.valueOf(rvTime);
		resrvDTO.setRtRvTime(ts);
		
		resrvRepository.insertResrv(resrvDTO);
	}
}
