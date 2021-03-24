package command;

import org.springframework.web.multipart.MultipartFile;

public class ResmenuCommand {
	String rtMenuNo;
	String rtMenu;
	String rtMenuChar;
	String rtNo;
	String rtMenuCon;
	MultipartFile [] rtMenuImage;
	public String getRtMenuNo() {
		return rtMenuNo;
	}
	public void setRtMenuNo(String rtMenuNo) {
		this.rtMenuNo = rtMenuNo;
	}
	public String getRtMenu() {
		return rtMenu;
	}
	public void setRtMenu(String rtMenu) {
		this.rtMenu = rtMenu;
	}
	public String getRtMenuChar() {
		return rtMenuChar;
	}
	public void setRtMenuChar(String rtMenuChar) {
		this.rtMenuChar = rtMenuChar;
	}
	public String getRtNo() {
		return rtNo;
	}
	public void setRtNo(String rtNo) {
		this.rtNo = rtNo;
	}
	public String getRtMenuCon() {
		return rtMenuCon;
	}
	public void setRtMenuCon(String rtMenuCon) {
		this.rtMenuCon = rtMenuCon;
	}
	public MultipartFile[] getRtMenuImage() {
		return rtMenuImage;
	}
	public void setRtMenuImage(MultipartFile[] rtMenuImage) {
		this.rtMenuImage = rtMenuImage;
	}
	
	
}
