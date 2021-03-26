package service.reservation;

import java.util.Calendar;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
@Component
public class ReservationRoomListService {

	public void execute(Model model) {

		Calendar cal = Calendar.getInstance();
		Integer year = cal.get(Calendar.YEAR);
		Integer month = cal.get(Calendar.MONTH) + 1;
		Integer day = cal.get(Calendar.DATE);
		cal.set(Calendar.DATE, 1);
		Integer firstWeekDay = cal.get(Calendar.DAY_OF_WEEK);
		Integer lastDay = cal.getActualMaximum(Calendar.DATE);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("day", day);
		model.addAttribute("firstWeekDay", firstWeekDay);
		model.addAttribute("lastDay", lastDay);
		cal.set(Calendar.MONTH, month);
		firstWeekDay = cal.get(Calendar.DAY_OF_WEEK);
		System.out.println(firstWeekDay);
		model.addAttribute("nextFstDay", firstWeekDay);
		lastDay = cal.getActualMaximum(Calendar.DATE);
		System.out.println(lastDay);
		model.addAttribute("nextLastDay", lastDay);
		
		
	}
}