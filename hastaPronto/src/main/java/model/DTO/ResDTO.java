package model.DTO;

public class ResDTO {
	String rtNo;
	String rtName;
	String rtFile;
	String rtContent;
	String rtRvNo;
	
	public String getRtRvNo() {
		return rtRvNo;
	}
	public void setRtRvNo(String rtRvNo) {
		this.rtRvNo = rtRvNo;
	}
	StartEndPageDTO startEndPageDTO;
	
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
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
	public String getRtFile() {
		return rtFile;
	}
	public void setRtFile(String rtFile) {
		this.rtFile = rtFile;
	}
	public String getRtContent() {
		return rtContent;
	}
	public void setRtContent(String rtContent) {
		this.rtContent = rtContent;
	}
	
}
