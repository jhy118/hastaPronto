package controller.announcement;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.AnnCommand;
import command.FileInfo;
import service.announcement.AnnDelService;
import service.announcement.AnnDetailService;
import service.announcement.AnnListService;
import service.announcement.AnnModifyService;
import service.announcement.AnnService;
import service.announcement.FileDelService;
import service.announcement.ImgDelService;
import validator.AnnCommandValidator;

@Controller
@RequestMapping("ann")
public class AnnController {
   @Autowired
   AnnService annService;
   @Autowired
   AnnListService annListService;
   @Autowired
   AnnDetailService annDetailService;
   @Autowired
   AnnModifyService annModifyService;
   @Autowired
   AnnDelService annDelService;
   @Autowired
   FileDelService fileDelService;
   @Autowired
   ImgDelService imgDelService;
   @RequestMapping(value="annList", method=RequestMethod.GET)
   public String noticeList(
         @RequestParam(value="page", defaultValue="1") Integer page,
         Model model) {
      annListService.execute(page, model);
      return "ann/annList";
   }
   @RequestMapping(value="annForm")
   public String noticeForm(AnnCommand annCommand) {
      return "ann/annForm";
   }
   @RequestMapping(value="annRegist", method=RequestMethod.POST)
   public String annRegist(AnnCommand annCommand, Errors errors,
         HttpSession session) {
      new AnnCommandValidator().validate(annCommand, errors);
      if(errors.hasErrors()) {
         return "ann/annForm";
      }
      annService.execute(annCommand, session);
      return "redirect:annList";
   }
   @RequestMapping("annDetail")
   public String annDetail(
		   @RequestParam(value="annNo") String annNo,
		   		Model model) {
	   annDetailService.execute(annNo, model);
	   annDetailService.updateReadCount(annNo);
	   return "ann/annDetail";
   }
   @RequestMapping("annModify/{annNo}")
   public String annModify(
		   @PathVariable(value="annNo") String annNo,
		   		Model model) {
	   annDetailService.execute(annNo, model);
	   return "ann/annModify";
   }
   @RequestMapping("annModifyOk")
   public String annModifyOk(AnnCommand annCommand, HttpSession session) {
	   annModifyService.execute(annCommand, session);
	   return "redirect:annDetail?annNo="+annCommand.getAnnNo();
   }
   @RequestMapping("annDelete")
   public String annDelete(String annNo, HttpSession session) {
	   annDelService.execute(annNo, session);
	   return "redirect:annList";
   }
   @RequestMapping("fileDel")
   public String fileDel(FileInfo fileInfo,
		   HttpSession session, Model model) {
	   fileDelService.execute(fileInfo, session, model);
	   return "ann/fileDel";
   }
   @RequestMapping("imgDel")
   public String imgDel(
		   @RequestParam(value="imgfile") String imgfile,
		   Model model, HttpSession session) {
	   imgDelService.imgDel(imgfile, model, session);
	   return "ann/imgDel";
   }
   
   
   
}