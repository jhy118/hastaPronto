package service.goods;

import java.io.File;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import model.DTO.GoodsDTO;
import repository.goods.GoodsRepository;

@Service
@Component
public class GoodsDeleteService {
	@Autowired
	GoodsRepository goodsRepository;

	public void execute(String goodsNo, HttpSession session) {
		GoodsDTO goodsDTO = new GoodsDTO();
		goodsDTO.setGoodsNo(goodsNo);
		goodsDTO = goodsRepository.getGoodsList(goodsDTO).get(0);
		String realPath = session.getServletContext().getRealPath("WEB-INF/view/goods/upload");
		File file = new File(realPath + "/" + goodsDTO.getGoodsFile());
		if (file.exists())
			file.delete();
		goodsRepository.deleteGoods(goodsDTO);
	}
}
