package service.schedule;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import command.ScheduleCommand;
import model.DTO.ScheduleDTO;
import model.DTO.WedCsDTO;
import repository.schedule.ScheduleRepository;

public class TherapyCalendarListService {
	@Autowired
	ScheduleRepository scheduleRepository;
	
	public static void execute(Model model, ScheduleCommand scheduleCommand) {
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		String nYear = "";
		String nMonth = "";
		String nDay = "";
		
		nYear = String.valueOf(cal.get(Calendar.YEAR));
		nMonth = String.valueOf(cal.get(Calendar.MONTH)+1);
											// 월은 0부터 시작함.
		int dayNum = cal.get(Calendar.DAY_OF_WEEK); 
									//1일에 해당하는 요일
		int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
								//해당 달의 마지막 날
		model.addAttribute("nYear", nYear);
		model.addAttribute("nMonth", nMonth);
		model.addAttribute("dayNum", dayNum);
		model.addAttribute("maxDay", maxDay);
		
	}

}
