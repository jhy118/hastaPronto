package model.DTO;

import java.util.List;

public class RespayDTO {
	String rtPmNo;
	String rtPmChar;
	String rtPmMethod;
	String rtRvNo;
	String userId;
	
	List<ResmenuDTO> resmenuDTO;
	List<ResStDTO> resStDTO;
	
	public List<ResmenuDTO> getResmenuDTO() {
		return resmenuDTO;
	}
	public void setResmenuDTO(List<ResmenuDTO> resmenuDTO) {
		this.resmenuDTO = resmenuDTO;
	}
	public List<ResStDTO> getResStDTO() {
		return resStDTO;
	}
	public void setResStDTO(List<ResStDTO> resStDTO) {
		this.resStDTO = resStDTO;
	}
	public String getRtPmNo() {
		return rtPmNo;
	}
	public void setRtPmNo(String rtPmNo) {
		this.rtPmNo = rtPmNo;
	}
	public String getRtPmChar() {
		return rtPmChar;
	}
	public void setRtPmChar(String rtPmChar) {
		this.rtPmChar = rtPmChar;
	}
	public String getRtPmMethod() {
		return rtPmMethod;
	}
	public void setRtPmMethod(String rtPmMethod) {
		this.rtPmMethod = rtPmMethod;
	}
	public String getRtRvNo() {
		return rtRvNo;
	}
	public void setRtRvNo(String rtRvNo) {
		this.rtRvNo = rtRvNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
}
