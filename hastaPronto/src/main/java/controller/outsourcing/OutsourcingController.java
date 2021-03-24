package controller.outsourcing;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.FileInfo;
import command.OsCommand;
import model.DTO.OsFileDTO;
import service.outsourcing.OsDeleteService;
import service.outsourcing.OsDetailService;
import service.outsourcing.OsFileDeleteService;
import service.outsourcing.OsListService;
import service.outsourcing.OsUpdateService;
import service.outsourcing.OutsourcingService;
import validator.OsCommandValidator;

@Controller
@RequestMapping("outsourcing")
public class OutsourcingController {
	@Autowired
	OutsourcingService outsourcingService;
	@Autowired
	OsListService osListService;
	@Autowired
	OsDetailService osDetailService;
	@Autowired
	OsUpdateService osUpdateService;
	@Autowired
	OsDeleteService osDeleteService;
	@Autowired
	OsFileDeleteService osFileDeleteService;
	
	@RequestMapping("osDelete/{osNo}")
	public String osDelete(
			@PathVariable(value="osNo") String osNo) {
		osDeleteService.execute(osNo);
		return "redirect:/outsourcing/osList";
	}
	
	@RequestMapping("osModify/{osNo}")
	public String osModify(
			@PathVariable(value="osNo") String osNo, Model model) {
		osDetailService.execute(osNo, model);
		return "outsourcing/osModify";
	}
	
	@RequestMapping("osModifyPro")
	public String osModifyPro(@ModelAttribute(value="os")OsCommand osCommand, HttpSession session) {
		osUpdateService.execute(osCommand, session);
		return "redirect:osDetail?osNo=" + osCommand.getOsNo();
	}
	
	@RequestMapping("osDetail")
	public String osDetail(
			@RequestParam(value="osNo") String osNo, Model model) {
		osDetailService.execute(osNo, model);
		return "outsourcing/osDetail";
	}

	@RequestMapping(value = "osList", method = RequestMethod.GET)
	public String outsourcing(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		osListService.execute(page, model);
		return "outsourcing/osList";
	}

	@RequestMapping("osForm")
	public String osForm(OsCommand osCommand) {
		return "outsourcing/osForm";
	}

	@RequestMapping("osFormAction")
	public String osFormAction(OsCommand osCommand, HttpSession session, Errors errors) {
		new OsCommandValidator().validate(osCommand, errors);
		if (errors.hasErrors()) {
			return "outsourcing/osForm";
		}
		outsourcingService.execute(osCommand, session);
		return "redirect:osList";
	}
	
	@RequestMapping("osFileDelete")
	   public String osFileDelete(OsFileDTO osFileDTO, HttpSession session, Model model) {
		osFileDeleteService.execute(osFileDTO, session, model);
		   return "ann/fileDel";
	   }
}
