package command;

import org.springframework.web.multipart.MultipartFile;

public class NoticeCommand {
	String noticeNo;
	String noticeName;
	String startDate;
	String endDate;
	String announceDate;
	String noticeContent;
	MultipartFile[] noticeFile;

	public String getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}

	public MultipartFile[] getNoticeFile() {
		return noticeFile;
	}

	public void setNoticeFile(MultipartFile[] noticeFile) {
		this.noticeFile = noticeFile;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	public String getAnnounceDate() {
		return announceDate;
	}

	public void setAnnounceDate(String announceDate) {
		this.announceDate = announceDate;
	}

	public String getNoticeName() {
		return noticeName;
	}

	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public void execute() {
		startDate = startDate.replace("T", " ") + ":00";
		endDate = endDate.replace("T", " ") + ":00";
		announceDate = announceDate.replace("T", " ") + ":00";
	}

}
