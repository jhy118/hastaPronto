package command;

import org.springframework.web.multipart.MultipartFile;

public class OsCommand {
	String osNo;
	String osName;
	String bsLicense;
	String osAddr;
	String osBusinessName;
	String repName;
	String osTel;
	String osEmail;

	MultipartFile[] report;
	public MultipartFile[] getReport() {
		return report;
	}
	public void setReport(MultipartFile[] report) {
		this.report = report;
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
