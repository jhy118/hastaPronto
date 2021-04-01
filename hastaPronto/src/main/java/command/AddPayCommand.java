package command;

public class AddPayCommand {
	Long totalChar;
	String apMethod;
	String rmRvNo;
	String userId;
	String[] apsGName;
	String[] apsNum;
	String[] apsChar;
	String[] goodsNo;

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

	public String[] getApsGName() {
		return apsGName;
	}

	public void setApsGName(String[] apsGName) {
		this.apsGName = apsGName;
	}

	public String[] getApsNum() {
		return apsNum;
	}

	public void setApsNum(String[] apsNum) {
		this.apsNum = apsNum;
	}

	public String[] getApsChar() {
		return apsChar;
	}

	public void setApsChar(String[] apsChar) {
		this.apsChar = apsChar;
	}

	public String[] getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(String[] goodsNo) {
		this.goodsNo = goodsNo;
	}
}
