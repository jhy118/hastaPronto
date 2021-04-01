package service.schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.ScheduleDTO;
import oracle.net.aso.s;
import repository.schedule.ScheduleRepository;

public class ThrapyDetailService {
	@Autowired
	ScheduleRepository scheduleRepository;
	public void execute(String schNo, Model model) {
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		scheduleDTO.setSchNo(schNo);
		List<ScheduleDTO> list = scheduleRepository.getSchList(scheduleDTO);
		model.addAttribute("sch", list.get(0));
	}
}
