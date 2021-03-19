package model.DTO;

import java.sql.Timestamp;

public class QuestionDTO {
	String qnaNo;
	String qnaSubject;
	String qnaWriter;
	String qnaContent;
	String qnaPw;
	Timestamp qnaRegist;
	String userId;
	String ipAddr;
	
	StartEndPageDTO startEndPageDTO;
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getIpAddr() {
		return ipAddr;
	}
	public void setIpAddr(String ipAddr) {
		this.ipAddr = ipAddr;
	}
	public String getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaSubject() {
		return qnaSubject;
	}
	public void setQnaSubject(String qnaSubject) {
		this.qnaSubject = qnaSubject;
	}
	public String getQnaWriter() {
		return qnaWriter;
	}
	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public String getQnaPw() {
		return qnaPw;
	}
	public void setQnaPw(String qnaPw) {
		this.qnaPw = qnaPw;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Timestamp getQnaRegist() {
		return qnaRegist;
	}
	public void setQnaRegist(Timestamp qnaRegist) {
		this.qnaRegist = qnaRegist;
	}
	
}
