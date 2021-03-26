package service.resrv;

import java.util.Calendar;

import org.springframework.ui.Model;

public class ResrvFormService {

	public void create(Model model) {
		CalendarMaker maker = new CalendarMaker();
		String year = null;
		String month = null;
		String date = null;
		maker.create(year, month, date, model);
	}
	
}
