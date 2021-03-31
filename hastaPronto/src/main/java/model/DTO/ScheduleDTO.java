package model.DTO;

import java.sql.Timestamp;

public class ScheduleDTO {
	String schNo;
	Timestamp schDate;
	String schName;
	String schContent;
	String userId;
	String oseNo;
	String osNo;
	String schType;
	Integer schNum;
	String schPay;
	
	public String getSchNo() {
		return schNo;
	}
	public void setSchNo(String schNo) {
		this.schNo = schNo;
	}
	public Timestamp getSchDate() {
		return schDate;
	}
	public void setSchDate(Timestamp schDate) {
		this.schDate = schDate;
	}
	public String getSchName() {
		return schName;
	}
	public void setSchName(String schName) {
		this.schName = schName;
	}
	public String getSchContent() {
		return schContent;
	}
	public void setSchContent(String schContent) {
		this.schContent = schContent;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getOseNo() {
		return oseNo;
	}
	public void setOseNo(String oseNo) {
		this.oseNo = oseNo;
	}
	public String getOsNo() {
		return osNo;
	}
	public void setOsNo(String osNo) {
		this.osNo = osNo;
	}
}
