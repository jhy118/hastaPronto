package model.DTO;

public class OsDTO {
	String osNo;
	String osName;
	String bsLicense;
	String osAddr;
	String osBusinessName;
	String repName;
	String osTel;
	String osEmail;
	
	StartEndPageDTO startEndPageDTO;
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	
	
	public String getOsNo() {
		return osNo;
	}
	public void setOsNo(String osNo) {
		this.osNo = osNo;
	}
	public String getOsName() {
		return osName;
	}
	public void setOsName(String osName) {
		this.osName = osName;
	}
	public String getBsLicense() {
		return bsLicense;
	}
	public void setBsLicense(String bsLicense) {
		this.bsLicense = bsLicense;
	}
	public String getOsAddr() {
		return osAddr;
	}
	public void setOsAddr(String osAddr) {
		this.osAddr = osAddr;
	}
	public String getOsBusinessName() {
		return osBusinessName;
	}
	public void setOsBusinessName(String osBusinessName) {
		this.osBusinessName = osBusinessName;
	}
	public String getRepName() {
		return repName;
	}
	public void setRepName(String repName) {
		this.repName = repName;
	}
	public String getOsTel() {
		return osTel;
	}
	public void setOsTel(String osTel) {
		this.osTel = osTel;
	}
	public String getOsEmail() {
		return osEmail;
	}
	public void setOsEmail(String osEmail) {
		this.osEmail = osEmail;
	}

	
}
