package command;

public class RoomReservationCommand {
	String ckIn;
	String ckOut;
	Long rmRvNum;
	String rmNo;
	String[] rmRequirements;
	Long rmExbadnum;
	Long rmPmChar;
	String[] rmAccount;

	public Long getRmPmChar() {
		return rmPmChar;
	}

	public void setRmPmChar(Long rmPmChar) {
		this.rmPmChar = rmPmChar;
	}

	public String[] getRmAccount() {
		return rmAccount;
	}

	public void setRmAccount(String[] rmAccount) {
		this.rmAccount = rmAccount;
	}

	public String getCkIn() {
		return ckIn;
	}

	public void setCkIn(String ckIn) {
		this.ckIn = ckIn;
	}

	public String getCkOut() {
		return ckOut;
	}

	public void setCkOut(String ckOut) {
		this.ckOut = ckOut;
	}

	public Long getRmRvNum() {
		return rmRvNum;
	}

	public void setRmRvNum(Long rmRvNum) {
		this.rmRvNum = rmRvNum;
	}

	public String getRmNo() {
		return rmNo;
	}

	public void setRmNo(String rmNo) {
		this.rmNo = rmNo;
	}

	public String[] getRmRequirements() {
		return rmRequirements;
	}

	public void setRmRequirements(String[] rmRequirements) {
		this.rmRequirements = rmRequirements;
	}

	public Long getRmExbadnum() {
		return rmExbadnum;
	}

	public void setRmExbadnum(Long rmExbadnum) {
		this.rmExbadnum = rmExbadnum;
	}

}
