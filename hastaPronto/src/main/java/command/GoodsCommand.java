package command;

import org.springframework.web.multipart.MultipartFile;

public class GoodsCommand {
	String goodsName;
	MultipartFile goodsFile;
	String goodsContent;
	Long goodsChar;
	String goodsNo;

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

	public MultipartFile getGoodsFile() {
		return goodsFile;
	}

	public void setGoodsFile(MultipartFile goodsFile) {
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
