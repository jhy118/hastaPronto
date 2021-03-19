package controller.outsourcing;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.OsCommand;
import service.outsourcing.OsDeleteService;
import service.outsourcing.OsDetailService;
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
	public String osModifyPro(OsCommand osCommand) {
		osUpdateService.execute(osCommand);
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
	public String osFormAction(OsCommand osCommand, Errors errors) {
		new OsCommandValidator().validate(osCommand, errors);
		if (errors.hasErrors()) {
			return "outsourcing/osForm";
		}
		outsourcingService.execute(osCommand);
		return "redirect:osList";
	}
}
