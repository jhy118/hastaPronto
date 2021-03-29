package model.DTO;

public class ResStDTO {
	String oderSno;
	Long oderSnum;
	String oderSchar;
	String rtRvNo;
	String userId;
	String rtMenuNo;
	
	ResmenuDTO resmenuDTO;
	
	public ResmenuDTO getResmenuDTO() {
		return resmenuDTO;
	}
	public void setResmenuDTO(ResmenuDTO resmenuDTO) {
		this.resmenuDTO = resmenuDTO;
	}
	StartEndPageDTO startEndPageDTO;
	
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getOderSno() {
		return oderSno;
	}
	public void setOderSno(String oderSno) {
		this.oderSno = oderSno;
	}
	public Long getOderSnum() {
		return oderSnum;
	}
	public void setOderSnum(Long oderSnum) {
		this.oderSnum = oderSnum;
	}
	public String getOderSchar() {
		return oderSchar;
	}
	public void setOderSchar(String oderSchar) {
		this.oderSchar = oderSchar;
	}
	public String getRtRvNo() {
		return rtRvNo;
	}
	public void setRtRvNo(String rtRvNo) {
		this.rtRvNo = rtRvNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getRtMenuNo() {
		return rtMenuNo;
	}
	public void setRtMenuNo(String rtMenuNo) {
		this.rtMenuNo = rtMenuNo;
	}
	
	
	
}
