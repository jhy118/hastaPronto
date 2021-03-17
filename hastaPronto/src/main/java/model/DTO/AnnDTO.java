package model.DTO;

import java.sql.Timestamp;

public class AnnDTO {
	 String annNo;
	 String annSubject;
	 Timestamp annDate;
	 String annContent;
	 String empId;
	 String annPw;
	 Integer readCount;
	 //   String annStoredFileName;
	 //   String annOriginalFileName;
	 //   String annFileSize;
	StartEndPageDTO startEndPageDTO;
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
	public String getAnnPw() {
		return annPw;
	}
	public void setAnnPw(String annPw) {
		this.annPw = annPw;
	}
	public Integer getReadCount() {
		return readCount;
	}
	public void setReadCount(Integer readCount) {
		this.readCount = readCount;
	}
}
