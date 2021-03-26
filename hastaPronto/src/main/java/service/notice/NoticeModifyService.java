package service.notice;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.FileInfo;
import command.NoticeCommand;
import model.DTO.AuthInfo;
import model.DTO.NoticeDTO;
import repository.notice.NoticeRepository;

@Service
@Component
public class NoticeModifyService {
	@Autowired
	NoticeRepository noticeRepository;

	public String execute(NoticeCommand noticeCommand, HttpSession session) {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNoticeNo(noticeCommand.getNoticeNo());
		noticeDTO = noticeRepository.getNoticeList(noticeDTO).get(0);
		noticeCommand.execute();
		Timestamp announceDate = Timestamp.valueOf(noticeCommand.getAnnounceDate());
		noticeDTO.setAnnounceDate(announceDate);
		Timestamp startDate = Timestamp.valueOf(noticeCommand.getStartDate());
		noticeDTO.setStartDate(startDate);
		Timestamp endDate = Timestamp.valueOf(noticeCommand.getEndDate());
		noticeDTO.setEndDate(endDate);
		noticeDTO.setNoticeName(noticeCommand.getNoticeName());
		noticeDTO.setNoticeContent(noticeCommand.getNoticeContent());
		String empId = ((AuthInfo) session.getAttribute("authInfo")).getLoginId();
		noticeDTO.setEmpId(empId);
		String path = "WEB-INF/view/notice/upload";
		String realPath = session.getServletContext().getRealPath(path);
		List<FileInfo> list = (List<FileInfo>) session.getAttribute("fileList");
		if (list == null) {
			list = new ArrayList<FileInfo>();
		}
		if (list.size() != 0 && noticeDTO.getNoticeOriginalFileName() != null) {
			for (FileInfo fi : list) {
				noticeDTO.setNoticeOriginalFileName(noticeDTO.getNoticeOriginalFileName()
						.replace(fi.getOriginalFileName() + "`", ""));
				noticeDTO.setNoticeStoreFileName(noticeDTO.getNoticeStoreFileName()
						.replace(fi.getStoredFileName() + "`", ""));
				noticeDTO.setNoticeFileSize(noticeDTO.getNoticeFileSize()
						.replace(fi.getFileSize() + "`", ""));
				File file = new File(realPath + "/" + fi.getStoredFileName());
				if (file.exists()) {
					file.delete();
				}
			}
		}

		if (!noticeCommand.getNoticeFile()[0].getOriginalFilename().equals("")) {
			for (MultipartFile mf : noticeCommand.getNoticeFile()) {
				String original = mf.getOriginalFilename();
				String fileExtention = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-", "") + fileExtention;
				String fileSize = String.valueOf(mf.getSize());
				noticeDTO.setNoticeOriginalFileName((noticeDTO.getNoticeOriginalFileName() + original + "`")
						.replace("null", ""));
				noticeDTO.setNoticeStoreFileName((noticeDTO.getNoticeStoreFileName() + store + "`")
						.replace("null", ""));
				noticeDTO.setNoticeFileSize((noticeDTO.getNoticeFileSize() + fileSize + "`")
						.replace("null", ""));
				File file = new File(realPath + "/" + store);
				try {
					mf.transferTo(file);
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		Integer result = noticeRepository.updateNotice(noticeDTO);
		if (result == 1) {
			return "redirect:/notice/noticeDetail/" + noticeCommand.getNoticeNo();
		}
		return "notice/noticeModify";
	}
}
