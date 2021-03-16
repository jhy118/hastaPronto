package repository.main;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.AuthInfo;

@Repository
@Component
public class LoginRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.login.loginMapper";
	String statement;

	public AuthInfo getLogin(String loginId) {
		statement = namespace + ".getLogin";
		return sqlSession.selectOne(statement, loginId);
	}

}
