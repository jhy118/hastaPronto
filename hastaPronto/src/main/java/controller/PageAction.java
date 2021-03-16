package controller;

import org.springframework.ui.Model;

public class PageAction {
	public void page(Model model, int count, int limit, int limitPage, int page, String pageUrl) {
		int startPage;
		int endPage;
		int maxPage;
		maxPage = (int) (count / limit + 0.95);
		startPage = (int) (((double) page / limitPage + 0.95) - 1) * limitPage + 1;
		endPage = startPage + limitPage - 1;
		if (maxPage < endPage)
			endPage = maxPage;
		model.addAttribute("maxPage", maxPage);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("page", page);
		model.addAttribute("pageUrl", pageUrl);
	}
}
