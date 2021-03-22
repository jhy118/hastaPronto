package service.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.NoticeDTO;
import model.DTO.StartEndPageDTO;
import repository.notice.NoticeRepository;

public class NoticeListService {
	@Autowired
	NoticeRepository noticeRepository; 

	public void execute(Integer page, Model model) {
		int limit = 10;
		int pageLimit = 10;
		Long startRow = (long) page * limit - 9;
		Long endRow = startRow + limit - 1;
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		List<NoticeDTO> lists = noticeRepository.getNoticeList(noticeDTO);
		Integer count = noticeRepository.getNoticeCount();
		model.addAttribute("count", count);
		model.addAttribute("noticeList", lists);
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, pageLimit, page, "notice?");
	}
}
