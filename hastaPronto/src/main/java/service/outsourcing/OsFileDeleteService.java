package service.outsourcing;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import model.DTO.OsFileDTO;

public class OsFileDeleteService {
	
	public void execute(OsFileDTO osFileDTO, 
			HttpSession session, Model model) {
		List<OsFileDTO> lists = (List<OsFileDTO>)session.getAttribute("lists");
		if(lists == null) {
			lists = new ArrayList<OsFileDTO>();
		}
		Integer num = 0;
		boolean newFile = true;
		for(int i=0; i<lists.size(); i++) {
			if(lists.get(i).getOsOriginalfilename()
					.equals(osFileDTO.getOsOriginalfilename())) {
				lists.remove(i);
				newFile = false;
				num = 0;
			}
		}
		if(newFile) {
			lists.add(osFileDTO);
			num = 1;
		}
		model.addAttribute("val", num);
		session.setAttribute("lists", lists);
	}

}
