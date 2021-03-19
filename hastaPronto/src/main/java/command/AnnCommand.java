package command;

import org.springframework.web.multipart.MultipartFile;

public class AnnCommand {
	String annSubject;
	String annContent;
	String annNo;
	MultipartFile[] report;

	public MultipartFile[] getReport() {
		return report;
	}

	public void setReport(MultipartFile[] report) {
		this.report = report;
	}

	public String getAnnNo() {
		return annNo;
	}

	public void setAnnNo(String annNo) {
		this.annNo = annNo;
	}

	public String getAnnSubject() {
		return annSubject;
	}

	public void setAnnSubject(String annSubject) {
		this.annSubject = annSubject;
	}

	public String getAnnContent() {
		return annContent;
	}

	public void setAnnContent(String annContent) {
		this.annContent = annContent;
	}
}