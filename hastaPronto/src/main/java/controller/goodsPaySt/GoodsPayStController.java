package controller.goodsPaySt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.GoodsPayStCommand;
import service.goodsPaySt.GoodsPayStDelService;
import service.goodsPaySt.GoodsPayStInfoService;
import service.goodsPaySt.GoodsPayStListService;
import service.goodsPaySt.GoodsPayStModifyService;
import service.goodsPaySt.GoodsPayStRegistService;
import service.goodsPaySt.GoodsPayStWriteService;
import validator.GoodsPayStCommandValidate;

@Controller
@RequestMapping("goodsPaySt")
public class GoodsPayStController {
	@Autowired
	GoodsPayStRegistService goodsPayStRegistService;
	@Autowired
	GoodsPayStWriteService goodsPayStWriteService;
	@Autowired
	GoodsPayStListService goodsPayStListService;
	@Autowired
	GoodsPayStInfoService goodsPayStInfoService;
	@Autowired
	GoodsPayStModifyService goodsPayStModifyService;
	@Autowired
	GoodsPayStDelService goodsPayStDelService;
	@RequestMapping("goodsPayStList")
	public String goodsPayStList(
			@RequestParam(value="page", defaultValue = "1")Integer page,
			@RequestParam(value = "osNo", defaultValue = "0") String osNo,
			Model model) {
		goodsPayStListService.execute(page, osNo, model);
		return "goodsPaySt/goodsPayStList";
	}
	@RequestMapping("payStWrite")
	public String payStWrite(GoodsPayStCommand goodsPayStCommand, Model model) {
		goodsPayStWriteService.execute(model);
		return "goodsPaySt/payStWrite";
	}
	@RequestMapping("payStRegist")
	public String payStRegist(GoodsPayStCommand goodsPayStCommand,
			Errors errors, HttpSession session) {
		new GoodsPayStCommandValidate().validate(goodsPayStCommand, errors);
		if(errors.hasErrors()) {
			return "goodsPaySt/payStWrite";
		}
		goodsPayStRegistService.execute(goodsPayStCommand, session);
		return "redirect:goodsPayStList";
	}
	@RequestMapping("goodsPayStInfo/{id}")
	public String goodsPayStInfo(
			@PathVariable(value="id")String goodsPayNo, Model model) {
		goodsPayStInfoService.execute(goodsPayNo, model);
		return "goodsPaySt/goodsPayStInfo";
	}
	@RequestMapping("goodsPayStModify")
	public String goodsPayStModify(
			@RequestParam(value="goodsPayNo")String goodsPayNo,
			Model model) {
		goodsPayStInfoService.execute(goodsPayNo, model);
		return "goodsPaySt/goodsPayStModify";	
	}
	@RequestMapping("goodsPayStModOk")
	public String goodsPayStModOk(GoodsPayStCommand goodsPayStCommand) {
		goodsPayStModifyService.execute(goodsPayStCommand);
		return "redirect:/goodsPaySt/goodsPayStInfo/"
				+goodsPayStCommand.getGoodsPayNo();
	}
	@RequestMapping("goodsPayStDelete")
	public String goodsPayStDelete(
			@RequestParam(value="goodsPayNo")String goodsPayNo) {
		goodsPayStDelService.execute(goodsPayNo);
		return "redirect:/goodsPaySt/goodsPayStList";
	}
}
