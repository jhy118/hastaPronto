package service.notice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.NoticeDTO;
import repository.notice.NoticeRepository;

@Service
@Component
public class NoticeDetailService {
	@Autowired
	NoticeRepository noticeRepository;

	public void execute(String noticeNo, Model model) {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNoticeNo(noticeNo);
		noticeDTO = noticeRepository.getNoticeList(noticeDTO).get(0);
		model.addAttribute("notice", noticeDTO);
	}
	public void upCount(String noticeNo) {
		noticeRepository.updateReadCount(noticeNo);
	}
}
