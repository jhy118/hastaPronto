package service.wedCs;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.WedCsCommand;
import model.DTO.WedCsDTO;
import repository.wedCs.WedCsRepository;

@Service
@Component
public class WedCsListService {
	@Autowired
	WedCsRepository wedCsRepository;
	public void execute(Model model, WedCsCommand wedCsCommand) {
		
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		String nYear = wedCsCommand.getnYear();
		String nMonth = wedCsCommand.getnMonth();
		String nDay = wedCsCommand.getnDay();
		String action = wedCsCommand.getAction();
		
		if(action == null) {
			cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		}else if(action.equals("previous")) {
			cal.set(Integer.parseInt(nYear), Integer.parseInt(nMonth)-2, 1);
		}else if(action.equals("next")) {
			cal.set(Integer.parseInt(nYear), Integer.parseInt(nMonth), 1);
		}
		
		
		
		nYear = String.valueOf(cal.get(Calendar.YEAR));
		nMonth = String.valueOf(cal.get(Calendar.MONTH)+1);
		int dayNum = cal.get(Calendar.DAY_OF_WEEK); //1일에 해당하는 요일
		int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		model.addAttribute("nYear", nYear);
		model.addAttribute("nMonth", nMonth);
		model.addAttribute("dayNum", dayNum);
		model.addAttribute("maxDay", maxDay);

		//현재달에 스케줄 있는지 알기 위해 년*월만 전달, 리스트로 출력
		WedCsDTO wedCsDTO = new WedCsDTO();
		wedCsDTO.setnMonth(nMonth);
		wedCsDTO.setnYear(nYear);
		List<WedCsDTO> list = wedCsRepository.getWedCsList(wedCsDTO);
		model.addAttribute("list", list);
		//
	}
}
