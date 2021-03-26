package service.goodsPaySt;

import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.GoodsPayStDTO;
import repository.goodsPaySt.GoodsPayStRepository;

public class GoodsPayStDelService {
	@Autowired
	GoodsPayStRepository goodsPayStRepository;
	public void execute(String goodsPayNo) {
		GoodsPayStDTO goodsPayStDTO = new GoodsPayStDTO();
		goodsPayStDTO.setGoodsPayNo(goodsPayNo);
		goodsPayStRepository.deleteBillSt(goodsPayNo);
	}

}
