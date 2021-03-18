package controller.question;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import command.QuestionCommand;
import service.question.QuestionDeleteService;
import service.question.QuestionDetailService;
import service.question.QuestionListService;
import service.question.QuestionModifyService;
import service.question.QuestionRegistService;
import validator.QuestionCommandValidator;

@Controller
@RequestMapping(value = "question")
public class QuestionController {
	@Autowired
	QuestionRegistService questionRegistService;
	@Autowired
	QuestionListService questionListService;
	@Autowired
	QuestionDetailService questionDetailService;
	@Autowired
	QuestionModifyService questionModifyService;
	@Autowired
	QuestionDeleteService questionDeleteService;
	@RequestMapping(value = "question" , method=RequestMethod.GET)
	public String questionList(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
		questionListService.execute(page, model);
		return "question/questionList";
	}
	
	@RequestMapping(value = "questionRegist" , method = RequestMethod.GET)
	public String questionForm(Model model) {  
		model.addAttribute("question", new QuestionCommand());
		return "question/questionForm";
	}
	@RequestMapping(value = "questionRegistPro" , method = RequestMethod.POST)
	public String questionRegistPro(  
			@ModelAttribute(value = "question")  QuestionCommand questionCommand, Errors errors, HttpServletRequest httpServletRequest) {
			new QuestionCommandValidator().validate(questionCommand, errors);
			if(errors.hasErrors()) {
				return "question/questionForm";	
				}
			questionRegistService.execute(questionCommand, httpServletRequest);
		return "redirect:/question/question";
	}
	@RequestMapping(value="questionDetail", method = RequestMethod.GET )
	public String questionDetail(Model model, 
			@RequestParam(value = "qnaNo") String qnaNo) {
			
		questionDetailService.execute(qnaNo, model);
		return "question/questionDetail";
	}
	@RequestMapping(value = "questionModify", method = RequestMethod.GET)   
	public String questionModify(Model model, 
			@RequestParam(value="qnaNo") String qnaNo) {
		   
		questionDetailService.execute(qnaNo, model);
		return "question/questionModify";
	}
	@RequestMapping(value="questionModifyPro", method = RequestMethod.POST)
	public String questionModifyPro(
			@ModelAttribute(value = "questionModify") QuestionCommand questionCommand) {
		questionModifyService.execute(questionCommand);
		return "redirect:/question/question";
	}
	@RequestMapping(value="questionDelete")
	public String questionDelete(
			@RequestParam(value="qnaNo") String qnaNo) {
		
		questionDeleteService.execute(qnaNo);
		return "redirect:/question/question";
	}
}