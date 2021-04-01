package model.DTO;

import java.sql.Timestamp;

public class WedPayDTO {
	String wedPmNo;
	double wedPmChar;
	String wedPmMethod;
	String userId;
	String wedRvNo;
	Timestamp wedPmDate;
	
	public Timestamp getWedPmDate() {
		return wedPmDate;
	}
	public void setWedPmDate(Timestamp wedPmDate) {
		this.wedPmDate = wedPmDate;
	}
	public String getWedPmNo() {
		return wedPmNo;
	}
	public void setWedPmNo(String wedPmNo) {
		this.wedPmNo = wedPmNo;
	}
	public double getWedPmChar() {
		return wedPmChar;
	}
	public void setWedPmChar(double wedPmChar) {
		this.wedPmChar = wedPmChar;
	}
	public String getWedPmMethod() {
		return wedPmMethod;
	}
	public void setWedPmMethod(String wedPmMethod) {
		this.wedPmMethod = wedPmMethod;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getWedRvNo() {
		return wedRvNo;
	}
	public void setWedRvNo(String wedRvNo) {
		this.wedRvNo = wedRvNo;
	}
	
}
