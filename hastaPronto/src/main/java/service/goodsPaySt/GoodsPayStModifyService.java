package service.goodsPaySt;

import org.springframework.beans.factory.annotation.Autowired;

import command.GoodsPayStCommand;
import model.DTO.GoodsPayStDTO;
import repository.goodsPaySt.GoodsPayStRepository;

public class GoodsPayStModifyService {
	@Autowired
	GoodsPayStRepository goodsPayStRepository;
	public void execute(GoodsPayStCommand goodsPayStCommand) {
		GoodsPayStDTO dto = new GoodsPayStDTO();
		dto.setAllPayment(goodsPayStCommand.getAllPayment());
		dto.setDetContent(goodsPayStCommand.getDetContent());
		dto.setOrderContent(goodsPayStCommand.getOrderContent());
		dto.setGoodsPayNo(goodsPayStCommand.getGoodsPayNo());
		goodsPayStRepository.updateBillSt(dto);
	}

}
