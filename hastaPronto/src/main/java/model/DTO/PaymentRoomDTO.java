package model.DTO;

public class PaymentRoomDTO {
	String rmPmNo;
	Long rmPmChar;
	String rmRvNo;
	String userId;
	String rmAccount;

	public String getRmPmNo() {
		return rmPmNo;
	}

	public void setRmPmNo(String rmPmNo) {
		this.rmPmNo = rmPmNo;
	}

	public Long getRmPmChar() {
		return rmPmChar;
	}

	public void setRmPmChar(Long rmPmChar) {
		this.rmPmChar = rmPmChar;
	}

	public String getRmRvNo() {
		return rmRvNo;
	}

	public void setRmRvNo(String rmRvNo) {
		this.rmRvNo = rmRvNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRmAccount() {
		return rmAccount;
	}

	public void setRmAccount(String rmAccount) {
		this.rmAccount = rmAccount;
	}

}
