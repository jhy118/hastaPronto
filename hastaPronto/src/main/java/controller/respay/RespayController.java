package controller.respay;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.RespayCommand;
import service.respay.RespayListService;
import service.respay.RespayRegistService;

@Controller
@RequestMapping("respay")
public class RespayController {
	@Autowired
	RespayRegistService respayRegistService;
	@Autowired
	RespayListService respayListService;

	@RequestMapping(value = "respayList", method = RequestMethod.GET)
	public String respayList(@RequestParam(value = "rtRvNo") String rtRvNo, Model model) {

		respayListService.execute(rtRvNo, model);
		return "respay/respayList";
	}

	@RequestMapping(value = "respayRegist", method = RequestMethod.POST)
	public String respayRegist(@ModelAttribute(value = "respay") RespayCommand respayCommand, HttpSession session) {

		respayRegistService.execute(respayCommand, session);
		return "redirect:/respay/respayList?rtRvNo=" + respayCommand.getRtRvNo();
	}
}