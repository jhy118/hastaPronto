package service.schedule;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.ScheduleCommand;
import model.DTO.AuthInfo;
import model.DTO.ScheduleDTO;
import repository.schedule.ScheduleRepository;

public class TherapyListService {
	@Autowired
	ScheduleRepository scheduleRepository;
	
	public void execute(ScheduleCommand scheduleCommand, HttpServletRequest request) {
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		scheduleDTO.setSchName(scheduleCommand.getSchName());
		scheduleDTO.setSchDate(scheduleCommand.getSchDate());
		scheduleDTO.setSchType(scheduleCommand.getSchType());
		scheduleDTO.setSchNum(scheduleCommand.getSchNum());
		scheduleDTO.setSchContent(scheduleCommand.getSchContent());
		scheduleDTO.setOseNo(scheduleCommand.getOseNo());
		scheduleDTO.setOsNo(scheduleCommand.getOsNo());
		scheduleDTO.setnYear(scheduleCommand.getnYear());
		scheduleDTO.setnMonth(scheduleCommand.getnMonth());
		scheduleDTO.setnDay(scheduleCommand.getnDay());
		scheduleDTO.setSchTime(scheduleCommand.getSchTime());
		HttpSession session = request.getSession();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		scheduleDTO.setUserId(authInfo.getLoginId());
		scheduleRepository.inserSch(scheduleDTO);
	}
	
	
}
