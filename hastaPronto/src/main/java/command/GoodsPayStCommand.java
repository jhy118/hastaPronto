package command;

public class GoodsPayStCommand {
	String orderContent;
	String detContent;
	Long allPayment;
	String osNo;
	public String getOsNo() {
		return osNo;
	}
	public void setOsNo(String osNo) {
		this.osNo = osNo;
	}
	public String getOrderContent() {
		return orderContent;
	}
	public void setOrderContent(String orderContent) {
		this.orderContent = orderContent;
	}
	public String getDetContent() {
		return detContent;
	}
	public void setDetContent(String detContent) {
		this.detContent = detContent;
	}
	public Long getAllPayment() {
		return allPayment;
	}
	public void setAllPayment(Long allPayment) {
		this.allPayment = allPayment;
	}
}
