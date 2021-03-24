package command;

import org.springframework.web.multipart.MultipartFile;

public class ResCommand {
	String rtNo;
	String rtName;
	String rtContent;
	MultipartFile [] rtFile;
	
	public MultipartFile[] getRtFile() {
		return rtFile;
	}
	public void setRtFile(MultipartFile[] rtFile) {
		this.rtFile = rtFile;
	}
	public String getRtNo() {
		return rtNo;
	}
	public void setRtNo(String rtNo) {
		this.rtNo = rtNo;
	}
	public String getRtName() {
		return rtName;
	}
	public void setRtName(String rtName) {
		this.rtName = rtName;
	}
	public String getRtContent() {
		return rtContent;
	}
	public void setRtContent(String rtContent) {
		this.rtContent = rtContent;
	}
	
}
