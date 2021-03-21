package command;

import java.util.Date;

public class ApplicantCommand {
	String appPh;
	String appPw;
	String appPwCon;
	String appName;
	String appEmail;
	String appAddr;
	String appBirth;
	String appGender;
	String selfIntroduction;

	public String getAppPwCon() {
		return appPwCon;
	}

	public void setAppPwCon(String appPwCon) {
		this.appPwCon = appPwCon;
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

	public String getAppBirth() {
		return appBirth;
	}

	public void setAppBirth(String appBirth) {
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

	public boolean appPwisEqualsAppPwCon() {
		if (this.appPw.equals(this.appPwCon)) {
			return true;
		}
		return false;
	}

}
