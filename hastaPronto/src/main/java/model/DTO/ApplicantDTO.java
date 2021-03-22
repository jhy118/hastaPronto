package model.DTO;

import java.util.Date;

public class ApplicantDTO {
	String appNo;
	String appPh;
	String appPw;
	String appName;
	String appEmail;
	String appAddr;
	Date appBirth;
	String appGender;
	String selfIntroduction;

	public String getAppNo() {
		return appNo;
	}

	public void setAppNo(String appNo) {
		this.appNo = appNo;
	}

	public String getAppPh() {
		return appPh;
	}

	public void setAppPh(String appPh) {
		this.appPh = appPh;
	}

	public String getAppPw() {
		return appPw;
	}

	public void setAppPw(String appPw) {
		this.appPw = appPw;
	}

	public String getAppName() {
		return appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public String getAppEmail() {
		return appEmail;
	}

	public void setAppEmail(String appEmail) {
		this.appEmail = appEmail;
	}

	public String getAppAddr() {
		return appAddr;
	}

	public void setAppAddr(String appAddr) {
		this.appAddr = appAddr;
	}

	public Date getAppBirth() {
		return appBirth;
	}

	public void setAppBirth(Date appBirth) {
		this.appBirth = appBirth;
	}

	public String getAppGender() {
		return appGender;
	}

	public void setAppGender(String appGender) {
		this.appGender = appGender;
	}

	public String getSelfIntroduction() {
		return selfIntroduction;
	}

	public void setSelfIntroduction(String selfIntroduction) {
		this.selfIntroduction = selfIntroduction;
	}

}
