package model.DTO;

public class GoodsDTO {
	String goodsNo;
	String goodsName;
	String goodsFile;
	String goodsContent;
	Long goodsChar;
	StartEndPageDTO startEndPageDTO;

	public StartEndPageDTO getStartEndPageDTO() {
		return startEndPageDTO;
	}

	public void setStartEndPageDTO(StartEndPageDTO startEndPageDTO) {
		this.startEndPageDTO = startEndPageDTO;
	}

	public String getGoodsNo() {
		return goodsNo;
	}

	public void setGoodsNo(String goodsNo) {
		this.goodsNo = goodsNo;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsFile() {
		return goodsFile;
	}

	public void setGoodsFile(String goodsFile) {
		this.goodsFile = goodsFile;
	}

	public String getGoodsContent() {
		return goodsContent;
	}

	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}

	public Long getGoodsChar() {
		return goodsChar;
	}

	public void setGoodsChar(Long goodsChar) {
		this.goodsChar = goodsChar;
	}

}
