package service.announcement;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import command.FileInfo;

public class FileDelService {

	public void execute(FileInfo fileInfo, 
			HttpSession session, Model model) {
		List<FileInfo> list = (List<FileInfo>)session.getAttribute("fileList");
		if(list == null) {
			list = new ArrayList<FileInfo>();
		}
		Integer num = 0;
		boolean newFile = true;
		for(int i=0; i<list.size(); i++) {
			if(list.get(i).getAnnOriginalFileName()
					.equals(fileInfo.getAnnOriginalFileName())) {
				list.remove(i);
				newFile = false;
				num = 0;
			}
		}
		if(newFile) {
			list.add(fileInfo);
			num = 1;
		}
		model.addAttribute("val", num);
		session.setAttribute("fileList", list);
	}
}
