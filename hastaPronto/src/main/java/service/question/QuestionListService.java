package service.question;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.QuestionDTO;
import model.DTO.StartEndPageDTO;
import repository.question.QuestionRepository;

public class QuestionListService {
	@Autowired
	QuestionRepository questionRepository;
	public void execute(Integer page, Model model) {
		//3.
		int limit = 10;
		int limitPage = 10;
		Long startRow = (long)page * limit - 9;
		Long endRow = startRow + limit - 1;
		
		//1.
		QuestionDTO questionDTO = new QuestionDTO();
		//4.
		questionDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
		
		//2.
		List<QuestionDTO> list = questionRepository.selectQuestion(questionDTO);
		model.addAttribute("questionList", list);
		Integer count =  questionRepository.questionCount();
		model.addAttribute("totalCount", count);
		//5.
		PageAction pageAction = new PageAction();
		pageAction.page(model, count, limit, limitPage, page, "question?");
		}
}
