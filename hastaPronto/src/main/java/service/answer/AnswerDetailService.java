package service.answer;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.AnswerDTO;
import repository.answer.AnswerRepository;

@Service
public class AnswerDetailService {
	@Autowired
	AnswerRepository answerRepository;
	public void execute(String qnaNo, Model model) {
		AnswerDTO answerDTO = new AnswerDTO();
		answerDTO.setAnsNo(qnaNo);
//		answerDTO = answerRepository.selectAnswer(answerDTO);
		model.addAttribute("answer" , answerDTO);
		
		
	}
}
