package model.DTO;

import java.sql.Timestamp;

public class ReservationRoomDTO {
	String rmRvNo;
	Timestamp ckIn;
	Timestamp ckOut;
	Long rmRvNum;
	String rmNo;
	String userId;
	String rmRequirements;
	Long rmExbadnum;
	PaymentRoomDTO paymentRoomDTO;
	RoomDTO roomDTO;
	MemberDTO memberDTO;

	public MemberDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(MemberDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

	public RoomDTO getRoomDTO() {
		return roomDTO;
	}

	public void setRoomDTO(RoomDTO roomDTO) {
		this.roomDTO = roomDTO;
	}

	public PaymentRoomDTO getPaymentRoomDTO() {
		return paymentRoomDTO;
	}

	public void setPaymentRoomDTO(PaymentRoomDTO paymentRoomDTO) {
		this.paymentRoomDTO = paymentRoomDTO;
	}

	public String getRmRequirements() {
		return rmRequirements;
	}

	public void setRmRequirements(String rmRequirements) {
		this.rmRequirements = rmRequirements;
	}

	public Long getRmExbadnum() {
		return rmExbadnum;
	}

	public void setRmExbadnum(Long rmExbadnum) {
		this.rmExbadnum = rmExbadnum;
	}

	public String getRmRvNo() {
		return rmRvNo;
	}

	public void setRmRvNo(String rmRvNo) {
		this.rmRvNo = rmRvNo;
	}

	public Timestamp getCkIn() {
		return ckIn;
	}

	public void setCkIn(Timestamp ckIn) {
		this.ckIn = ckIn;
	}

	public Timestamp getCkOut() {
		return ckOut;
	}

	public void setCkOut(Timestamp ckOut) {
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
