package service.question;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.QuestionDTO;
import repository.question.QuestionRepository;

@Service
public class QuestionDetailService {
	@Autowired
	QuestionRepository questionRepository;
	public void execute(String qnaNo, Model model) {
		QuestionDTO questionDTO = new QuestionDTO();
		questionDTO.setQnaNo(qnaNo);
		questionDTO = questionRepository.selectQuestion(questionDTO).get(0);
		model.addAttribute("questionWeb", questionDTO);
	}
}
