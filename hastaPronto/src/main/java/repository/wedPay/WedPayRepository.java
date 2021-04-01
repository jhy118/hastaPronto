package repository.wedPay;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.WedPayDTO;

public class WedPayRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.wedPay.wedPayMapper";
	String statement;
	//wedPayInsert
	public Integer wedPayInsert(WedPayDTO wedPayDTO) {
		statement = namespace + ".wedPayInsert";
		return sqlSession.update(statement, wedPayDTO);
	}//getWedPayList
	public List<WedPayDTO> getWedPayList(WedPayDTO wedPayDTO){
		statement = namespace + ".getWedPayList";
		return sqlSession.selectList(statement, wedPayDTO);
	}
}
