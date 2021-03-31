package service.schedule;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.ScheduleDTO;
import model.DTO.StartEndPageDTO;
import repository.schedule.ScheduleRepository;

public class TherapyListOkService {
	@Autowired
	ScheduleRepository scheduleRepository;
	public void execute(Model model, Integer page) {
		int limit = 15;
		int limitpage = 10;
		Long startRow = ((long)page -1) * limit + 1;
		Long endRow = startRow + limit -1;
		ScheduleDTO scheduleDTO = new ScheduleDTO();
		scheduleDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		List<ScheduleDTO> list = scheduleRepository.getSchList(scheduleDTO);
	}

}
