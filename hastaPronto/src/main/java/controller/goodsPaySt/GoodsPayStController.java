package controller.goodsPaySt;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.GoodsPayStCommand;
import service.goodsPaySt.GoodsPayStListService;
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
	@RequestMapping("goodsPayStList")
	public String goodsPayStList(
			@RequestParam(value="page", defaultValue = "1")Integer page,
			Model model) {
		goodsPayStListService.execute(page, model);
		goodsPayStWriteService.execute(model);
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
}
