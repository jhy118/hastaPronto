package model.DTO;

import java.sql.Timestamp;

public class GoodsPayStDTO {
	String goodsPayNo;
	String orderContent;
	Long allPayment;
	String detContent;
	Timestamp paymentDate;
	String osNo;
	String empId;
	
	StartEndPageDTO startEndPageDTO;
	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}
	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}
	public String getGoodsPayNo() {
		return goodsPayNo;
	}
	public void setGoodsPayNo(String goodsPayNo) {
		this.goodsPayNo = goodsPayNo;
	}
	public String getOrderContent() {
		return orderContent;
	}
	public void setOrderContent(String orderContent) {
		this.orderContent = orderContent;
	}
	public Long getAllPayment() {
		return allPayment;
	}
	public void setAllPayment(Long allPayment) {
		this.allPayment = allPayment;
	}
	public String getDetContent() {
		return detContent;
	}
	public void setDetContent(String detContent) {
		this.detContent = detContent;
	}
	public Timestamp getPaymentDate() {
		return paymentDate;
	}
	public void setPaymentDate(Timestamp paymentDate) {
		this.paymentDate = paymentDate;
	}
	public String getOsNo() {
		return osNo;
	}
	public void setOsNo(String osNo) {
		this.osNo = osNo;
	}
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	
}
