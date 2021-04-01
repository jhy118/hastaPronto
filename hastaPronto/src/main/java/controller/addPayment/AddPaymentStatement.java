package controller.addPayment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.AddPayCommand;
import service.addPayment.AddPaymentRegistService;
import service.addPayment.AddPaymentService;
import service.addPayment.NotPayListService;

@Controller
@RequestMapping(value = "addPayStatement")
public class AddPaymentStatement {
	@Autowired
	NotPayListService notPayListService;
	@Autowired
	AddPaymentService addPaymentService;
	@Autowired
	AddPaymentRegistService addPaymentRegistService;

	@RequestMapping(value = "notPayList", method = RequestMethod.GET)
	public String notPayList(Model model) {
		notPayListService.execute(model);
		return "addPayment/notPayList";
	}

	@RequestMapping(value = "addPayment/{id}", method = RequestMethod.GET)
	public String addPayment(@PathVariable(value="id")String rmRvNo, Model model) {
		addPaymentService.execute(rmRvNo, model);
		model.addAttribute("addPayCommand", new AddPayCommand());
		return "addPayment/addPayment";
	}
	@RequestMapping(value = "addPayment", method = RequestMethod.POST)
	public String addPaymentOk(@ModelAttribute(value="addPayCommand")AddPayCommand addPayCommand) {
		addPaymentRegistService.execute(addPayCommand);
		return "redirect:/addPayStatement/notPayList";
	}
}