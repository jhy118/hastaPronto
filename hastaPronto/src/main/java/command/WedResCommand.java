package command;

import org.springframework.web.multipart.MultipartFile;

public class WedResCommand {
	String wedRtNo;
	String wedRtName;
	Integer wedRtChar;
	MultipartFile[] wedRtFile;
	String wedRtMname;
	String wedRtLocation;
	Integer wedRtNum;
	String empId;
	
	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	public String getWedRtNo() {
		return wedRtNo;
	}
	public void setWedRtNo(String wedRtNo) {
		this.wedRtNo = wedRtNo;
	}
	public String getWedRtName() {
		return wedRtName;
	}
	public void setWedRtName(String wedRtName) {
		this.wedRtName = wedRtName;
	}
	public Integer getWedRtChar() {
		return wedRtChar;
	}
	public void setWedRtChar(Integer wedRtChar) {
		this.wedRtChar = wedRtChar;
	}
	public MultipartFile[] getWedRtFile() {
		return wedRtFile;
	}
	public void setWedRtFile(MultipartFile[] wedRtFile) {
		this.wedRtFile = wedRtFile;
	}
	public String getWedRtMname() {
		return wedRtMname;
	}
	public void setWedRtMname(String wedRtMname) {
		this.wedRtMname = wedRtMname;
	}
	public String getWedRtLocation() {
		return wedRtLocation;
	}
	public void setWedRtLocation(String wedRtLocation) {
		this.wedRtLocation = wedRtLocation;
	}
	public Integer getWedRtNum() {
		return wedRtNum;
	}
	public void setWedRtNum(Integer wedRtNum) {
		this.wedRtNum = wedRtNum;
	}
	
	
}
