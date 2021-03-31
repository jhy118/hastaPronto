package service.goods;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.GoodsDTO;
import repository.goods.GoodsRepository;

@Service
@Controller
public class GoodsDetailService {
	@Autowired
	GoodsRepository goodsRepository;

	public void execute(String goodsNo, Model model) {
		GoodsDTO goodsDTO = new GoodsDTO();
		goodsDTO.setGoodsNo(goodsNo);
		goodsDTO = goodsRepository.getGoodsList(goodsDTO).get(0);
		model.addAttribute("goods", goodsDTO);
	}
}