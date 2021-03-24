package service.goodsPaySt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.GoodsPayStCommand;
import model.DTO.AuthInfo;
import model.DTO.GoodsPayStDTO;
import repository.goodsPaySt.GoodsPayStRepository;

@Service
@Component
public class GoodsPayStRegistService {
	@Autowired
	GoodsPayStRepository goodsPayStRepository;
	
	public void execute(GoodsPayStCommand goodsPayStCommand,
			HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		GoodsPayStDTO goodsPayStDTO = new GoodsPayStDTO();
		goodsPayStDTO.setOrderContent(goodsPayStCommand.getOrderContent());
		goodsPayStDTO.setDetContent(goodsPayStCommand.getDetContent());
		goodsPayStDTO.setAllPayment(goodsPayStCommand.getAllPayment());
		goodsPayStDTO.setEmpId(authInfo.getLoginId());
		goodsPayStDTO.setOsNo(goodsPayStCommand.getOsNo());
		goodsPayStDTO.setGoodsPayNo(goodsPayStCommand.getGoodsPayNo());
		goodsPayStRepository.payStInsert(goodsPayStDTO);
	}

}
