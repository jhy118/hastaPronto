package service.wedding;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

public class WedFileDelService {

	public void imgDel(String imgfile, Model model, 
			HttpSession session) {
		List<String> list =
				(List<String>)session.getAttribute("imgList");
		if(list == null) {
			list = new ArrayList<String>();
		}
		Integer num = 0;
		boolean newFile = true;
		for(int i = 0; i<list.size(); i++) {
			if(list.get(i).equals(imgfile)) {
				list.remove(i);
				newFile = false;
				num = 0;
			}
		}
		if(newFile) {
			list.add(imgfile);
			session.setAttribute("imgList", list);
			num = 1;
		}
		model.addAttribute("val", num);
	}

}
