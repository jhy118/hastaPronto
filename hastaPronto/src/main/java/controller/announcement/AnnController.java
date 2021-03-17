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
import service.announcement.AnnDetailService;
import service.announcement.AnnListService;
import service.announcement.AnnService;
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
	   return "ann/annDetail";
   }
   @RequestMapping("annModify/{annNo}")
   public String annModify(
		   @PathVariable(value="annNo") String annNo,
		   		Model model) {
	   annDetailService.execute(annNo, model);
	   return "ann/annModify";
   }
   
   
   
   
   
   
   
}