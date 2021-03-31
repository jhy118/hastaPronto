package service.goods;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import command.GoodsCommand;
import model.DTO.GoodsDTO;
import repository.goods.GoodsRepository;

@Service
@Component
public class GoodsModifyService {
	@Autowired
	GoodsRepository goodsRepository;

	public String execute(GoodsCommand goodsCommand, Model model, HttpSession session) {
		if (goodsCommand.getGoodsName().equals("")) {
			model.addAttribute("nameErr", "상품 이름을 입력해주세요.");
			return "goods/goodsModify";
		}
		if (goodsCommand.getGoodsChar() == null) {
			model.addAttribute("charErr", "상품 가격을 입력해주세요.");
			return "goods/goodsModify";
		}
		GoodsDTO goodsDTO = new GoodsDTO();
		goodsDTO.setGoodsNo(goodsCommand.getGoodsNo());
		goodsDTO = goodsRepository.getGoodsList(goodsDTO).get(0);
		goodsDTO.setGoodsChar(goodsCommand.getGoodsChar());
		goodsDTO.setGoodsName(goodsCommand.getGoodsName());
		goodsDTO.setGoodsContent(goodsCommand.getGoodsContent());
		if (!goodsCommand.getGoodsFile().getOriginalFilename().equals("")) {
			String realPath = session.getServletContext().getRealPath("WEB-INF/view/goods/upload");
			File fileDel = new File(realPath + "/" + goodsDTO.getGoodsFile());
			if (fileDel.exists())
				fileDel.delete();
			MultipartFile mf = goodsCommand.getGoodsFile();
			String original = mf.getOriginalFilename();
			String extention = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "") + extention;
			File file = new File(realPath + "/" + store);
			try {
				mf.transferTo(file);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			goodsDTO.setGoodsFile(store);
		}
		Integer result = goodsRepository.updateGoods(goodsDTO);
		return "redirect:/goods/goodsDetail/" + goodsCommand.getGoodsNo();
	}

}
