package model.DTO;

import java.sql.Timestamp;

public class ScheduleDTO {
	String schNo;
	String schDate;
	String schName;
	String schContent;
	String userId;
	String oseNo;
	String osNo;
	String schType;
	Integer schNum;
	String nYear;
	String nMonth;
	String nDay;
	String schTime;
	
	public String getSchNo() {
		return schNo;
	}
	public void setSchNo(String schNo) {
		this.schNo = schNo;
	}
	public String getSchDate() {
		return schDate;
	}
	public void setSchDate(String schDate) {
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
	public String getSchType() {
		return schType;
	}
	public void setSchType(String schType) {
		this.schType = schType;
	}
	public Integer getSchNum() {
		return schNum;
	}
	public void setSchNum(Integer schNum) {
		this.schNum = schNum;
	}
	public String getnYear() {
		return nYear;
	}
	public void setnYear(String nYear) {
		this.nYear = nYear;
	}
	public String getnMonth() {
		return nMonth;
	}
	public void setnMonth(String nMonth) {
		this.nMonth = nMonth;
	}
	public String getnDay() {
		return nDay;
	}
	public void setnDay(String nDay) {
		this.nDay = nDay;
	}
	public String getSchTime() {
		return schTime;
	}
	public void setSchTime(String schTime) {
		this.schTime = schTime;
	}


	StartEndPageDTO startEndPageDTO;
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
}
