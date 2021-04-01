package model.DTO;

public class OsFileDTO {
	String osFilenum;
	String osOriginalfilename;
	String osStorefilename;
	String osFilesize;
	StartEndPageDTO startEndPageDTO;
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getOsFilenum() {
		return osFilenum;
	}
	public void setOsFilenum(String osFilenum) {
		this.osFilenum = osFilenum;
	}
	public String getOsOriginalfilename() {
		return osOriginalfilename;
	}
	public void setOsOriginalfilename(String osOriginalfilename) {
		this.osOriginalfilename = osOriginalfilename;
	}
	public String getOsStorefilename() {
		return osStorefilename;
	}
	public void setOsStorefilename(String osStorefilename) {
		this.osStorefilename = osStorefilename;
	}
	public String getOsFilesize() {
		return osFilesize;
	}
	public void setOsFilesize(String osFilesize) {
		this.osFilesize = osFilesize;
	}
	
}
