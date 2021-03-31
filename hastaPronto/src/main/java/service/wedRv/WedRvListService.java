package service.wedRv;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.WedRvCommand;
import model.DTO.WedRvDTO;
import repository.wedRv.WedRvRepository;

@Service
@Component
public class WedRvListService {
	@Autowired
	WedRvRepository wedRvRepository;
	public void execute(WedRvCommand wedRvCommand, Model model) {
		
		Calendar cal = Calendar.getInstance();
		cal.set(cal.get(Calendar.YEAR), cal.get(Calendar.MONTH), 1);
		String nYear = wedRvCommand.getnYear();
		String nMonth = wedRvCommand.getnMonth();
		String nDay = wedRvCommand.getnDay();
		String action = wedRvCommand.getAction();
		
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
		WedRvDTO wedRvDTO = new WedRvDTO();
		wedRvDTO.setnMonth(nMonth);
		wedRvDTO.setnYear(nYear);
		List<WedRvDTO> list = wedRvRepository.getWedRvList(wedRvDTO);
		model.addAttribute("list", list);
		
	}

}
