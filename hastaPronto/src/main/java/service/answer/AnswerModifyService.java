package service.answer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.AnswerCommand;
import model.DTO.AnswerDTO;
import repository.answer.AnswerRepository;

@Service
public class AnswerModifyService {
	@Autowired
	AnswerRepository answerRepository;
	public void execute(AnswerCommand answerCommand) {
		AnswerDTO answerDTO = new AnswerDTO();
		answerDTO.setQnaNo(answerCommand.getQnaNo());
		answerDTO.setAnsSubject(answerCommand.getAnsSubject());
		answerDTO.setAnsContent(answerCommand.getAnsContent());
		answerRepository.updateAnswer(answerDTO);
	}
}
