package service.schedule;

import org.springframework.beans.factory.annotation.Autowired;

import repository.schedule.ScheduleRepository;

public class TherapyDeleteService {

	@Autowired
	ScheduleRepository scheduleRepository;
	public void execute(String schNo) {
		scheduleRepository.therapyDelete(schNo);
	}

}
