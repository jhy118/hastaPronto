package service.goodsPaySt;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.GoodsPayStDTO;
import model.DTO.OsDTO;
import model.DTO.StartEndPageDTO;
import repository.goodsPaySt.GoodsPayStRepository;
import repository.outsourcing.OsRepository;

@Service
@Component
public class GoodsPayStListService {
	@Autowired
	GoodsPayStRepository goodsPayStRepository;
	@Autowired
	OsRepository osRepository;
	public void execute(Integer page, String osNo, Model model) {
		int limit = 10;
		int limitPage = 10;
		Long startRow = ((long)page - 1) * limit + 1;
		Long endRow = startRow + limit -1;
		GoodsPayStDTO goodsPayStDTO = new GoodsPayStDTO();
		goodsPayStDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		goodsPayStDTO.setOsNo(osNo);
		List<GoodsPayStDTO> list = 
				goodsPayStRepository.getGoodsPayStList(goodsPayStDTO);
		int count = goodsPayStRepository.getCount(Integer.valueOf(osNo));
		OsDTO osDTO = new OsDTO();
		List<OsDTO> list1 = osRepository.getOsList(osDTO);
		
		model.addAttribute("osNo", osNo);
		model.addAttribute("list", list);
		model.addAttribute("count", count);
		model.addAttribute("osList", list1);
		
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "goodsPayStList?");
	}

}
