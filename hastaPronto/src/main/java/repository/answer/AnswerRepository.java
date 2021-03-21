package repository.answer;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.AnswerDTO;

public class AnswerRepository {
	@Autowired
	SqlSession sqlSession;
	String statement;
	String namespace = "mappers.answer.answerMapper";
	
	public Integer insertAnswer(AnswerDTO answerDTO) {
		statement = namespace + ".insertAnswer";
		return sqlSession.insert(statement, answerDTO);
	}
	
}
