package model.DTO;

import java.security.Timestamp;

public class OsEmpDTO {
	String oseNo;
	String oseId;
	String osePw;
	String oseCat;
	String osePh;
	String oseEmail;
	String oseAddr;
	String osNo;
	Timestamp oseRegist;
	String oseName;
	
	StartEndPageDTO startEndPageDTO;
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	
	public String getOseNo() {
		return oseNo;
	}
	public void setOseNo(String oseNo) {
		this.oseNo = oseNo;
	}
	public String getOseId() {
		return oseId;
	}
	public void setOseId(String oseId) {
		this.oseId = oseId;
	}
	public String getOsePw() {
		return osePw;
	}
	public void setOsePw(String osePw) {
		this.osePw = osePw;
	}
	public String getOseCat() {
		return oseCat;
	}
	public void setOseCat(String oseCat) {
		this.oseCat = oseCat;
	}
	public String getOsePh() {
		return osePh;
	}
	public void setOsePh(String osePh) {
		this.osePh = osePh;
	}
	public String getOseEmail() {
		return oseEmail;
	}
	public void setOseEmail(String oseEmail) {
		this.oseEmail = oseEmail;
	}
	public String getOseAddr() {
		return oseAddr;
	}
	public void setOseAddr(String oseAddr) {
		this.oseAddr = oseAddr;
	}
	public String getOsNo() {
		return osNo;
	}
	public void setOsNo(String osNo) {
		this.osNo = osNo;
	}
	public Timestamp getOseRegist() {
		return oseRegist;
	}
	public void setOseRegist(Timestamp oseRegist) {
		this.oseRegist = oseRegist;
	}
	public String getOseName() {
		return oseName;
	}
	public void setOseName(String oseName) {
		this.oseName = oseName;
	}
	
}
