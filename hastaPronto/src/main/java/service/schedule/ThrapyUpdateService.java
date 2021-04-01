package service.schedule;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.ScheduleCommand;
import model.DTO.AuthInfo;
import model.DTO.ScheduleDTO;
import repository.schedule.ScheduleRepository;
public class ThrapyUpdateService {
	@Autowired
	ScheduleRepository scheduleRepository;
	public void execute(ScheduleCommand scheduleCommand, HttpSession session) {
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		List<ScheduleDTO> list = scheduleRepository.getSchList(scheduleDTO);
		scheduleDTO.setSchNo(scheduleCommand.getSchNo());
		scheduleDTO.setSchDate(scheduleCommand.getSchDate());
		scheduleDTO.setSchType(scheduleCommand.getSchType());
		scheduleDTO.setSchNum(scheduleCommand.getSchNum());
		scheduleDTO.setSchContent(scheduleCommand.getSchContent());
		scheduleDTO.setOseNo(scheduleCommand.getOseNo());
		scheduleDTO.setSchTime(scheduleCommand.getSchTime());
		scheduleRepository.theUpdate(scheduleDTO);
	}

}
