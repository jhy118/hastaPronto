package model.DTO;

public class StartEndPageDTO {
	Long startRow;
	Long endRow;
	
	public StartEndPageDTO(Long startRow, Long endRow) {
		this.startRow = startRow;
		this.endRow = endRow;
	}

	public Long getStartRow() {
		return startRow;
	}

	public void setStartRow(Long startRow) {
		this.startRow = startRow;
	}

	public Long getEndRow() {
		return endRow;
	}

	public void setEndRow(Long endRow) {
		this.endRow = endRow;
	}
}
