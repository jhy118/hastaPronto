package service.notice;

import java.io.File;
import java.sql.Timestamp;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.NoticeCommand;
import model.DTO.AuthInfo;
import model.DTO.NoticeDTO;
import repository.notice.NoticeRepository;

@Service
@Component
public class NoticeRegistService {
	@Autowired
	NoticeRepository noticeRepository;

	public String execute(NoticeCommand noticeCommand, HttpSession httpSession) {
		NoticeDTO noticeDTO = new NoticeDTO();
		System.out.println(noticeCommand.getStartDate());
		noticeCommand.execute();
		noticeDTO.setNoticeContent(noticeCommand.getNoticeContent());
		noticeDTO.setNoticeName(noticeCommand.getNoticeName());
		Timestamp startDate = Timestamp.valueOf(noticeCommand.getStartDate());
		noticeDTO.setStartDate(startDate);
		Timestamp endDate = Timestamp.valueOf(noticeCommand.getEndDate());
		noticeDTO.setEndDate(endDate);
		Timestamp annDate = Timestamp.valueOf(noticeCommand.getAnnounceDate());
		noticeDTO.setAnnounceDate(annDate);
		AuthInfo authInfo = (AuthInfo)httpSession.getAttribute("authInfo");
		noticeDTO.setEmpId(authInfo.getLoginId());
		String path = "WEB-INF/view/notice/upload";
		String realPath = httpSession.getServletContext().getRealPath(path);
		String original = "";
		String store = "";
		String fileSize = "";
		if (noticeCommand.getNoticeFile()[0].getOriginalFilename().equals("")) {
			original = null;
			store = null;
			fileSize = null;
		} else {
			for (MultipartFile mf : noticeCommand.getNoticeFile()) {
				String oName = mf.getOriginalFilename();
				String nameExtention = oName.substring(oName.lastIndexOf("."));
				String sName = UUID.randomUUID().toString().replace("-", "") + nameExtention;
				String fSize = String.valueOf(mf.getSize());
				original += oName + "`";
				store += sName + "`";
				fileSize += fSize + "`";
				File file = new File(realPath + "/" + sName);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		noticeDTO.setNoticeOriginalFileName(original);
		noticeDTO.setNoticeStoreFileName(store);
		noticeDTO.setNoticeFileSize(fileSize);
		Integer result = noticeRepository.insertNotice(noticeDTO);
		if(result == 1) {
			return "redirect:/notice/notice";
		}
		return "notice/noticeForm";
	}
}
