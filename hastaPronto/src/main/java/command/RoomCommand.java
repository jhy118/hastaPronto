package command;

import org.springframework.web.multipart.MultipartFile;

public class RoomCommand {
	String rmName;
	String rmChar;
	String rmContent;
	String rmPaycontent;
	MultipartFile[] rmFile;
	String rmNo;

	public String getRmNo() {
		return rmNo;
	}

	public void setRmNo(String rmNo) {
		this.rmNo = rmNo;
	}

	public String getRmName() {
		return rmName;
	}

	public void setRmName(String rmName) {
		this.rmName = rmName;
	}

	public String getRmChar() {
		return rmChar;
	}

	public void setRmChar(String rmChar) {
		this.rmChar = rmChar;
	}

	public String getRmContent() {
		return rmContent;
	}

	public void setRmContent(String rmContent) {
		this.rmContent = rmContent;
	}

	public String getRmPaycontent() {
		return rmPaycontent;
	}

	public void setRmPaycontent(String rmPaycontent) {
		this.rmPaycontent = rmPaycontent;
	}

	public MultipartFile[] getRmFile() {
		return rmFile;
	}

	public void setRmFile(MultipartFile[] rmFile) {
		this.rmFile = rmFile;
	}
}
