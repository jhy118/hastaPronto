package model.DTO;

public class OsFileDTO {
	private int osFilenum;
	private String osOriginalfilename;
	private String osStorefilename;
	private String osImgfile;
	private int osFilesize;
	public int getOsFilenum() {
		return osFilenum;
	}
	public void setOsFilenum(int osFilenum) {
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
	public String getOsImgfile() {
		return osImgfile;
	}
	public void setOsImgfile(String osImgfile) {
		this.osImgfile = osImgfile;
	}
	public int getOsFilesize() {
		return osFilesize;
	}
	public void setOsFilesize(int osFilesize) {
		this.osFilesize = osFilesize;
	}
}
