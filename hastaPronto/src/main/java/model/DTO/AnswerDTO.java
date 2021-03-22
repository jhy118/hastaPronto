package model.DTO;

import java.sql.Timestamp;

public class AnswerDTO {
	String ansNo;
	String ansSubject;
	String ansContent;
	Timestamp ansRegist;
	String userId;
	String empId;
	String qnaNo;
	public String getAnsNo() {
		return ansNo;
	}
	public void setAnsNo(String ansNo) {
		this.ansNo = ansNo;
	}
	public String getAnsSubject() {
		return ansSubject;
	}
	public void setAnsSubject(String ansSubject) {
		this.ansSubject = ansSubject;
	}
	public String getAnsContent() {
		return ansContent;
	}
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}
	public Timestamp getAnsRegist() {
		return ansRegist;
	}
	public void setAnsRegist(Timestamp ansRegist) {
		this.ansRegist = ansRegist;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}
	
}
