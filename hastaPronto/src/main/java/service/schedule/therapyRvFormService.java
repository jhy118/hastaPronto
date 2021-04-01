package service.schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.ScheduleCommand;
import model.DTO.ScheduleDTO;
import repository.schedule.ScheduleRepository;

public class therapyRvFormService {
	@Autowired
	ScheduleRepository scheduleRepository;
	
	public void execute(ScheduleCommand scheduleCommand, Model model) {
		ScheduleDTO scheduleDTO  = new ScheduleDTO();
		List<ScheduleDTO> list = scheduleRepository.getSchList(scheduleDTO);
		model.addAttribute("lists", list);
	}

}
