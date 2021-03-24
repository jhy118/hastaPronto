package service.notice;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.DTO.NoticeDTO;
import repository.notice.NoticeRepository;

@Service
@Component
public class NoticeDeleteService {
	@Autowired
	NoticeRepository noticeRepository;

	public void execute(String noticeNo, HttpSession session) {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNoticeNo(noticeNo);
		noticeDTO = noticeRepository.getNoticeList(noticeDTO).get(0);
		if (noticeDTO.getNoticeOriginalFileName() != null) {
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/notice/upload");
			String[] storeName = noticeDTO.getNoticeStoreFileName().split("`");
			for(String sn : storeName) {				
				File file = new File(realPath + "/" + sn);
				if(file.exists())
					file.delete();
			}
		}
		noticeRepository.deleteNotice(noticeNo);
	}
}
