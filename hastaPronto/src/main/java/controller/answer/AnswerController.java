package controller.answer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.AnswerCommand;
import service.answer.AnswerDetailService;
import service.answer.AnswerRegistService;
import validator.AnswerCommandValidator;


@Controller
@RequestMapping(value = "answer")
public class AnswerController {
	@Autowired
	AnswerRegistService answerRegistService;
	@Autowired
	AnswerDetailService answerDetailService;
	
	@RequestMapping(value = "answerRegist" , method = RequestMethod.GET)
	public String answerRegist(
			@RequestParam(value = "qnaNo") String qnaNo,
			@RequestParam(value = "userId") String userId, Model model) {
		AnswerCommand answer = new AnswerCommand();
		answer.setQnaNo(qnaNo);
		answer.setUserId(userId);
		model.addAttribute("answer", answer);
		return "answer/answerForm";
			}
	@RequestMapping(value = "answerRegistPro", method = RequestMethod.POST)
	public String answerRegistPro(
			@ModelAttribute(value = "answer") AnswerCommand answerCommand, Errors errors, HttpSession httpSession) {
		new AnswerCommandValidator().validate(answerCommand, errors);
		if(errors.hasErrors()) {
			return "answer/answerForm";	
			}
		answerRegistService.execute(answerCommand, errors, httpSession);
		return "redirect:/answer/answer";
			}
	
	@RequestMapping(value = "answerDetail", method = RequestMethod.GET)
	public String answerDetail(
			@RequestParam(value = "qnaNo") String qnaNo, Model model) {
		
		answerDetailService.execute(qnaNo, model);
		return "answer/answerDetail";
	}
}
