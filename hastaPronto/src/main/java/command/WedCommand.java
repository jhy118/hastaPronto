package command;

import org.springframework.web.multipart.MultipartFile;

public class WedCommand {
	String wedNo;
	String wedName;
	Integer wedChar;
	MultipartFile[] wedFile;
	String wedContent;
	Integer wedNum;
	String empId;
	String wedLocation;
	
	public String getWedLocation() {
		return wedLocation;
	}
	public void setWedLocation(String wedLocation) {
		this.wedLocation = wedLocation;
	}
	public String getWedNo() {
		return wedNo;
	}
	public void setWedNo(String wedNo) {
		this.wedNo = wedNo;
	}
	public String getWedName() {
		return wedName;
	}
	public void setWedName(String wedName) {
		this.wedName = wedName;
	}
	public Integer getWedChar() {
		return wedChar;
	}
	public void setWedChar(Integer wedChar) {
		this.wedChar = wedChar;
	}
	public MultipartFile[] getWedFile() {
		return wedFile;
	}
	public void setWedFile(MultipartFile[] wedFile) {
		this.wedFile = wedFile;
	}
	public String getWedContent() {
		return wedContent;
	}
	public void setWedContent(String wedContent) {
		this.wedContent = wedContent;
	}
	public Integer getWedNum() {
		return wedNum;
	}
	public void setWedNum(Integer wedNum) {
		this.wedNum = wedNum;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	
}
