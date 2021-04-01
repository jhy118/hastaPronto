package model.DTO;

public class AddPayDTO {
	String apNo;
	Long totalChar;
	String apMethod;
	String rmRvNo;
	String userId;

	public String getApNo() {
		return apNo;
	}

	public void setApNo(String apNo) {
		this.apNo = apNo;
	}

	public Long getTotalChar() {
		return totalChar;
	}

	public void setTotalChar(Long totalChar) {
		this.totalChar = totalChar;
	}

	public String getApMethod() {
		return apMethod;
	}

	public void setApMethod(String apMethod) {
		this.apMethod = apMethod;
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

}
