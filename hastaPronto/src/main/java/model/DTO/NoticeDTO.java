package model.DTO;

import java.sql.Timestamp;

public class NoticeDTO {
	String noticeNo;
	String noticeName;
	Timestamp noticeDate;
	Timestamp startDate;
	Timestamp endDate;
	Timestamp announceDate;
	String noticeContent;
	String empId;
	Long readCount;
	String noticeOriginalFileName;
	String noticeStoreFileName;
	String noticeFileSize;
	StartEndPageDTO startEndPageDTO;
	
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}

	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}

	public String getNoticeOriginalFileName() {
		return noticeOriginalFileName;
	}

	public void setNoticeOriginalFileName(String noticeOriginalFileName) {
		this.noticeOriginalFileName = noticeOriginalFileName;
	}

	public String getNoticeStoreFileName() {
		return noticeStoreFileName;
	}

	public void setNoticeStoreFileName(String noticeStoreFileName) {
		this.noticeStoreFileName = noticeStoreFileName;
	}

	public String getNoticeFileSize() {
		return noticeFileSize;
	}

	public void setNoticeFileSize(String noticeFileSize) {
		this.noticeFileSize = noticeFileSize;
	}

	public String getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(String noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeName() {
		return noticeName;
	}

	public void setNoticeName(String noticeName) {
		this.noticeName = noticeName;
	}

	public Timestamp getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Timestamp noticeDate) {
		this.noticeDate = noticeDate;
	}

	public Timestamp getStartDate() {
		return startDate;
	}

	public void setStartDate(Timestamp startDate) {
		this.startDate = startDate;
	}

	public Timestamp getEndDate() {
		return endDate;
	}

	public void setEndDate(Timestamp endDate) {
		this.endDate = endDate;
	}

	public Timestamp getAnnounceDate() {
		return announceDate;
	}

	public void setAnnounceDate(Timestamp announceDate) {
		this.announceDate = announceDate;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public String getEmpId() {
		return empId;
	}

	public void setEmpId(String empId) {
		this.empId = empId;
	}

	public Long getReadCount() {
		return readCount;
	}

	public void setReadCount(Long readCount) {
		this.readCount = readCount;
	}

}