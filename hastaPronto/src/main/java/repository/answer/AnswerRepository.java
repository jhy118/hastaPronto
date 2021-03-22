package repository.answer;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.AnswerDTO;
import model.DTO.QuestionDTO;

public class AnswerRepository {
	@Autowired
	SqlSession sqlSession;
	String statement;
	String namespace = "mappers.answer.answerMapper";
	
	public Integer insertAnswer(AnswerDTO answerDTO) {
		statement = namespace + ".insertAnswer";
		return sqlSession.insert(statement, answerDTO);
	}
	
	public AnswerDTO selectAnswer(AnswerDTO answerDTO) {
		statement = namespace + ".selectAnswer";
		return sqlSession.selectOne(statement, answerDTO);
	}
	public Integer updateAnswer(AnswerDTO answerDTO) {
		statement = namespace + ".updateAnswer";
		return sqlSession.selectOne(statement, answerDTO);
	}
	
}
