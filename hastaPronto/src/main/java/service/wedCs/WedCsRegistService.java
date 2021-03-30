package service.wedCs;

import java.sql.Timestamp;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.WedCsCommand;
import model.DTO.AuthInfo;
import model.DTO.WedCsDTO;
import repository.wedCs.WedCsRepository;

@Service
@Component
public class WedCsRegistService {
	@Autowired
	WedCsRepository wedCsRepository;

	public void execute(WedCsCommand wedCsCommand, HttpSession session) {
		WedCsDTO wedCsDTO = new WedCsDTO();
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
		wedCsDTO.setUserId(authInfo.getLoginId());
		
//		if(authInfo.getGrade() == "emp") {
//			wedCsDTO.setUserId(wedCsCommand.getUserId());
//		}else if(authInfo.getGrade() == "user")
//		wedCsDTO.setUserId(authInfo.getLoginId());
		
		
		wedCsDTO.setWedCosName(wedCsCommand.getWedCosName());
		wedCsDTO.setWedCosEmail(wedCsCommand.getWedCosEmail());
		wedCsDTO.setWedCosPh(wedCsCommand.getWedCosPh());
		wedCsDTO.setWedCosDay(Timestamp.valueOf(wedCsCommand.getWedCosDay() + wedCsCommand.getWedCosTime()));
		wedCsDTO.setWedCosNum(wedCsCommand.getWedCosNum());
		wedCsDTO.setWedNo(wedCsCommand.getWedNo());
		wedCsDTO.setWedCosContent(wedCsCommand.getWedCosContent());
		
		
		//추가(스케줄추가)
		wedCsDTO.setnYear(wedCsCommand.getnYear());
		wedCsDTO.setnMonth(wedCsCommand.getnMonth());
		wedCsDTO.setnDay(wedCsCommand.getnDay());	
		wedCsRepository.wedCsInsert(wedCsDTO);
	}

}
