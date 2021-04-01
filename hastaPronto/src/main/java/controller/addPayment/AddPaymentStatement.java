package controller.addPayment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.addPayment.AddPaymentService;
import service.addPayment.NotPayListService;

@Controller
@RequestMapping(value = "addPayStatement")
public class AddPaymentStatement {
	@Autowired
	NotPayListService notPayListService;
	@Autowired
	AddPaymentService addPaymentService;

	@RequestMapping(value = "notPayList", method = RequestMethod.GET)
	public String notPayList(Model model) {
		notPayListService.execute(model);
		return "addPayment/notPayList";
	}

	@RequestMapping(value = "addPayment/{id}", method = RequestMethod.GET)
	public String addPayment(@PathVariable(value="id")String rmRvNo, Model model) {
		addPaymentService.execute(rmRvNo, model);
		return "addPayment/addPayment";
	}
	@RequestMapping(value = "addPayment/{id}", method = RequestMethod.POST)
	public String addPaymentOk(@PathVariable(value="id")String rmRvNo, Model model) {
		addPaymentService.execute(rmRvNo, model);
		return "addPayment/addPayment";
	}
}