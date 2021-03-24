package model.DTO;

import java.sql.Timestamp;

public class AnnDTO {
	String annNo;
	String annSubject;
	Timestamp annDate;
	String annContent;
	String empId;
	Integer readCount;
    String annStoredFileName;
    String annOriginalFileName;
    String annFileSize;
    String annImg;
    StartEndPageDTO startEndPageDTO;
    public AnnDTO() {}
	public AnnDTO(String annNo, String annSubject, Timestamp annDate, String annContent, String empId,
			Integer readCount, String annStoredFileName, String annOriginalFileName, String annFileSize,
			String annImg) {
		super();
		this.annNo = annNo;
		this.annSubject = annSubject;
		this.annDate = annDate;
		this.annContent = annContent;
		this.empId = empId;
		this.readCount = readCount;
		this.annStoredFileName = annStoredFileName;
		this.annOriginalFileName = annOriginalFileName;
		this.annFileSize = annFileSize;
		this.annImg = annImg;
	}
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getAnnNo() {
		return annNo;
	}
	public void setAnnNo(String annNo) {
		this.annNo = annNo;
	}
	public String getAnnSubject() {
		return annSubject;
	}
	public void setAnnSubject(String annSubject) {
		this.annSubject = annSubject;
	}
	public Timestamp getAnnDate() {
		return annDate;
	}
	public void setAnnDate(Timestamp annDate) {
		this.annDate = annDate;
	}
	public String getAnnContent() {
		return annContent;
	}
	public void setAnnContent(String annContent) {
		this.annContent = annContent;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public Integer getReadCount() {
		return readCount;
	}
	public void setReadCount(Integer readCount) {
		this.readCount = readCount;
	}
	public String getAnnStoredFileName() {
		return annStoredFileName;
	}
	public void setAnnStoredFileName(String annStoredFileName) {
		this.annStoredFileName = annStoredFileName;
	}
	public String getAnnOriginalFileName() {
		return annOriginalFileName;
	}
	public void setAnnOriginalFileName(String annOriginalFileName) {
		this.annOriginalFileName = annOriginalFileName;
	}
	public String getAnnFileSize() {
		return annFileSize;
	}
	public void setAnnFileSize(String annFileSize) {
		this.annFileSize = annFileSize;
	}
	public String getAnnImg() {
		return annImg;
	}
	public void setAnnImg(String annImg) {
		this.annImg = annImg;
	}
}
