package service.goodsPaySt;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.DTO.GoodsPayStDTO;
import model.DTO.OsDTO;
import repository.goodsPaySt.GoodsPayStRepository;
import repository.outsourcing.OsRepository;

public class GoodsPayStInfoService {
	@Autowired
	GoodsPayStRepository goodsPayStRepository;
	@Autowired
	OsRepository osRepository;
	public void execute(String goodsPayNo, Model model) {
		OsDTO osDTO = new OsDTO();
		GoodsPayStDTO goodsPayStDTO = new GoodsPayStDTO();
		goodsPayStDTO.setGoodsPayNo(goodsPayNo);
		goodsPayStDTO = goodsPayStRepository.getOneGoodsPaySt(goodsPayStDTO);
		// ↓추가추가추
		osDTO.setOsNo(goodsPayStDTO.getOsNo());
		List<OsDTO> list = osRepository.getOsList(osDTO);
		model.addAttribute("osList", list.get(0));
		model.addAttribute("gps", goodsPayStDTO);
	}

}
