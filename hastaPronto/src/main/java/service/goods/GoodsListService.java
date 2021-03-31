package service.goods;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.GoodsDTO;
import model.DTO.StartEndPageDTO;
import repository.goods.GoodsRepository;

@Service
@Component
public class GoodsListService {
	@Autowired
	GoodsRepository goodsRepository;

	public void execute(Integer page, Model model) {
		int limit = 10;
		int pageLimit = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit - 1;
		GoodsDTO goodsDTO = new GoodsDTO();
		goodsDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		List<GoodsDTO> list = goodsRepository.getGoodsList(goodsDTO);
		model.addAttribute("goodsList", list);
		Integer count = goodsRepository.getGoodsCount();
		model.addAttribute("count", count);
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, pageLimit, page, "goods?");
	}
}