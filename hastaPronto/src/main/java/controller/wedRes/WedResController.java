package controller.wedRes;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.WedResCommand;
import service.wedRes.WedResService;
import service.wedRes.WedRtDelService;
import service.wedRes.WedRtFileDelService;
import service.wedRes.WedRtInfoService;
import service.wedRes.WedRtListService;
import service.wedRes.WedRtModService;
import service.wedding.WedFileDelService;
import validator.WedResCommandValidator;

@Controller
@RequestMapping("wedRes")
public class WedResController {
	@Autowired
	WedResService wedResService;
	@Autowired
	WedRtListService wedRtListService;
	@Autowired
	WedRtInfoService wedRtInfoService;
	@Autowired
	WedRtFileDelService wedRtFileDelService;
	@Autowired
	WedRtModService wedRtModService;
	@Autowired
	WedRtDelService wedRtDelService;
	@RequestMapping("wedResList")
	public String wedResList(Model model) {
		wedRtListService.execute(model);
		return "wedRes/wedResList";
	}
	@RequestMapping("wedResWrite")
	public String wedResWrite(WedResCommand wedResCommand) {
		return "wedRes/wedResWrite";
	}
	@RequestMapping("wedResRegist")
	public String wedResRegist(WedResCommand wedResCommand,
			Errors errors, HttpSession session) {
		new WedResCommandValidator().validate(wedResCommand, errors);
		if(errors.hasErrors()) {
			return "wedRes/wedResWrite";
		}
		wedResService.execute(wedResCommand, session);
		return "redirect:wedResList";
	}
	@RequestMapping("wedRtInfo")
	public String wedRtInfo(
			@RequestParam("wedRtNo")String wedRtNo,
			Model model) {
		wedRtInfoService.execute(wedRtNo, model);
		return "wedRes/wedRtInfo";
	}
	@RequestMapping("wedRtModify")
	public String wedRtModify(
			@RequestParam("wedRtNo")String wedRtNo,
			Model model) {
		wedRtInfoService.execute(wedRtNo, model);
		return "wedRes/wedRtModify";
	}
	@RequestMapping("imgDel")
	public String imgDel(
			@RequestParam(value="imgfile") String imgfile,
			Model model, HttpSession session) {
		wedRtFileDelService.imgDel(imgfile, model, session);
		return "wedRes/imgDel";
	}
	@RequestMapping("wedRtModifyOk")
	public String wedRtModifyOk(WedResCommand wedResCommand,
			HttpSession session) {
		wedRtModService.execute(wedResCommand, session);
		return "redirect:wedRtInfo?wedRtNo="
				+wedResCommand.getWedRtNo();
	}
	@RequestMapping("wedRtDel")
	public String wedRtDel(
			@RequestParam(value="wedRtNo") String wedRtNo,
			HttpSession session) {
		wedRtDelService.execute(wedRtNo, session);
		return "redirect:wedResList";
	}
}
