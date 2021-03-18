package service.question;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.question.QuestionRepository;

@Service
public class QuestionDeleteService {
	@Autowired
	QuestionRepository questionRepository;
	public void execute(String qnaNo) {
		questionRepository.deleteQuestion(qnaNo);
		
	}
}
