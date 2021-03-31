package controller.goods;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.GoodsCommand;
import service.goods.GoodsDeleteService;
import service.goods.GoodsDetailService;
import service.goods.GoodsListService;
import service.goods.GoodsModifyService;
import service.goods.GoodsRegistService;

@Controller
@RequestMapping(value = "goods")
public class GoodsController {
	@Autowired
	GoodsRegistService goodsRegistService;
	@Autowired
	GoodsListService goodsListService;
	@Autowired
	GoodsDetailService goodsDetailService;
	@Autowired
	GoodsModifyService goodsModifyService;
	@Autowired
	GoodsDeleteService goodsDeleteService;

	@RequestMapping(value = "goods", method = RequestMethod.GET)
	public String goods(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		goodsListService.execute(page, model);
		return "goods/goods";
	}

	@RequestMapping(value = "goodsRegist", method = RequestMethod.GET)
	public String goodsForm(Model model) {
		model.addAttribute("goodsCommand", new GoodsCommand());
		return "goods/goodsForm";
	}

	@RequestMapping(value = "goodsRegist", method = RequestMethod.POST)
	public String goodsRegist(@ModelAttribute(value = "goodsCommand") GoodsCommand goodsCommand, HttpSession session,
			Model model) {
		String path = goodsRegistService.execute(goodsCommand, session, model);
		return path;
	}

	@RequestMapping(value = "goodsDetail/{id}", method = RequestMethod.GET)
	public String goodsDetail(@PathVariable(value = "id") String goodsNo, Model model) {
		goodsDetailService.execute(goodsNo, model);
		return "goods/goodsDetail";
	}

	@RequestMapping(value = "goodsModify/{id}", method = RequestMethod.GET)
	public String goodsModify(@PathVariable(value = "id") String goodsNo, Model model) {
		goodsDetailService.execute(goodsNo, model);
		return "goods/goodsModify";
	}

	@RequestMapping(value = "goodsModify/{id}", method = RequestMethod.POST)
	public String goodsModifyOk(@ModelAttribute(value = "goods") GoodsCommand goodsCommand, Model model,
			HttpSession session) {
		String path = goodsModifyService.execute(goodsCommand, model, session);
		return path;
	}
	
	@RequestMapping(value = "goodsDelete/{id}", method = RequestMethod.GET)
	public String goodsDelete(@PathVariable(value = "id") String goodsNo, HttpSession session) {
		goodsDeleteService.execute(goodsNo, session);
		return "redirect:/goods/goods";
	}
}