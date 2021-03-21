package service.answer;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;

import command.AnswerCommand;
import model.DTO.AnswerDTO;
import model.DTO.AuthInfo;
import model.DTO.QuestionDTO;
import repository.answer.AnswerRepository;

public class AnswerRegistService {
	@Autowired
	AnswerRepository answerRepository;
	public void execute(AnswerCommand answerCommand, Errors errors, HttpSession httpSession) {
		System.out.println(answerCommand.getUserId());
		System.out.println(answerCommand.getQnaNo());
		AnswerDTO answerDTO = new AnswerDTO();
		answerDTO.setAnsContent(answerCommand.getAnsContent());
		answerDTO.setAnsSubject(answerCommand.getAnsSubject());
		answerDTO.setUserId(answerCommand.getUserId());  
		AuthInfo authInfo = (AuthInfo)httpSession.getAttribute("authInfo");
		answerDTO.setEmpId(authInfo.getLoginId());
		answerDTO.setQnaNo(answerCommand.getQnaNo());
		answerRepository.insertAnswer(answerDTO);
	}
}
