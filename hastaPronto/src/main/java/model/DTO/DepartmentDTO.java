package model.DTO;

public class DepartmentDTO {
	String depNo;
	String depName;
	String depAddr;
	String depPh;
	StartEndPageDTO startEndPageDTO;
	public String getDepNo() {
		return depNo;
	}

	public void setDepNo(String depNo) {
		this.depNo = depNo;
	}

	public String getDepName() {
		return depName;
	}

	public void setDepName(String depName) {
		this.depName = depName;
	}

	public String getDepAddr() {
		return depAddr;
	}

	public void setDepAddr(String depAddr) {
		this.depAddr = depAddr;
	}

	public String getDepPh() {
		return depPh;
	}

	public void setDepPh(String depPh) {
		this.depPh = depPh;
	}

}
