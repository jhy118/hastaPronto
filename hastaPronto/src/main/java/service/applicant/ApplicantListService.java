package service.applicant;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.ApplicantDTO;
import model.DTO.NoticeDTO;
import model.DTO.StartEndPageDTO;
import repository.applicant.ApplicantRepository;
import repository.notice.NoticeRepository;

@Service
@Component
public class ApplicantListService {
	@Autowired
	ApplicantRepository applicantRepository;
	@Autowired
	NoticeRepository noticeRepository;

	public void execute(Integer page, Model model, String noticeNo) {
		int limit = 10;
		int pageLimit = 10;
		Long startRow = (long) limit * page - 9;
		Long endRow = startRow + limit - 1;
		NoticeDTO noticeDTO = new NoticeDTO();
		List<NoticeDTO> noList = noticeRepository.getNoticeList(noticeDTO);
		model.addAttribute("noticeList", noList);
		noticeDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		noticeDTO.setNoticeNo(noticeNo);
		List<ApplicantDTO> lists = applicantRepository.getApplicant(noticeDTO);
		Integer count = applicantRepository.countApplicant(Integer.valueOf(noticeNo));
		model.addAttribute("noticeNo", noticeNo);
		model.addAttribute("appList",lists);
		model.addAttribute("count", count);
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, pageLimit, page, "applicant?");
		
	}
}