package service.question;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.QuestionCommand;
import model.DTO.AuthInfo;
import model.DTO.QuestionDTO;
import repository.question.QuestionRepository;

@Service
@Component
public class QuestionRegistService { 
	@Autowired
	QuestionRepository questionRepository;
	public void execute(QuestionCommand questionCommand, HttpServletRequest httpServletRequest) {
		QuestionDTO questionDTO = new QuestionDTO();
		questionDTO.setQnaContent(questionCommand.getQnaContent());
		questionDTO.setQnaWriter(questionCommand.getQnaWriter());
		questionDTO.setQnaSubject(questionCommand.getQnaSubject());
		questionDTO.setQnaPw(questionCommand.getQnaPw());
		AuthInfo authInfo = (AuthInfo)httpServletRequest.getSession().getAttribute("authInfo");
		questionDTO.setUserId(authInfo.getLoginId());
		questionDTO.setIpAddr(httpServletRequest.getRemoteAddr());
		Integer result = questionRepository.insertQuestion(questionDTO);
		System.out.println(result);
	}
}
