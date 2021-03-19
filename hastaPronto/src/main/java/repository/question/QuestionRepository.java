package repository.question;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.QuestionDTO;

@Repository
public class QuestionRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.question.questionMapper";
	String statement;
	public Integer insertQuestion(QuestionDTO questionDTO) {
		statement = namespace + ".insertQuestion";
		return sqlSession.insert(statement, questionDTO);
	}
	public List<QuestionDTO> selectQuestion(QuestionDTO questionDTO) {
		statement = namespace + ".selectQuestion";
		return sqlSession.selectList(statement, questionDTO);
	}
	public Integer questionCount() {
		statement = namespace + ".questionCount";
		return sqlSession.selectOne(statement);
	}
	public Integer updateQuestion(QuestionDTO questionDTO) {
		statement = namespace + ".updateQuestion";
		return sqlSession.selectOne(statement, questionDTO);
	}
	public Integer deleteQuestion(String qnaNo) {
		statement = namespace + ".deleteQuestion";
		return sqlSession.selectOne(statement, qnaNo);
	}
}
