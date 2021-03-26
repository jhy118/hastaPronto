package model.DTO;

import java.sql.Timestamp;

public class ResrvDTO {
	String rtRvNo;
	String rtRvTnum;
	String rtrvNum;
	Timestamp rtRvTime;
	String userId;
	String rtNo;
	StartEndPageDTO startEndPageDTO;
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getRtRvNo() {
		return rtRvNo;
	}  
	public void setRtRvNo(String rtRvNo) {
		this.rtRvNo = rtRvNo;
	}
	public String getRtRvTnum() {
		return rtRvTnum;
	}
	public void setRtRvTnum(String rtRvTnum) {
		this.rtRvTnum = rtRvTnum;
	}
	public String getRtrvNum() {
		return rtrvNum;
	}
	public void setRtrvNum(String rtrvNum) {
		this.rtrvNum = rtrvNum;
	}
	public Timestamp getRtRvTime() {
		return rtRvTime;
	}
	public void setRtRvTime(Timestamp rtRvTime) {
		this.rtRvTime = rtRvTime;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRtNo() {
		return rtNo;
	}
	public void setRtNo(String rtNo) {
		this.rtNo = rtNo;
	}
	
	
}
