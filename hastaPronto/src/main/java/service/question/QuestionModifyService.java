package service.question;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.QuestionCommand;
import model.DTO.QuestionDTO;
import repository.question.QuestionRepository;

@Service
public class QuestionModifyService {
	@Autowired
	QuestionRepository questionRepository;
	public void execute(QuestionCommand questionCommand) {
		QuestionDTO questionDTO = new QuestionDTO();
		questionDTO.setQnaNo(questionCommand.getQnaNo());
		questionDTO.setQnaSubject(questionCommand.getQnaSubject());
		questionDTO.setQnaContent(questionCommand.getQnaContent());
		questionRepository.updateQuestion(questionDTO);
		
	}
}
