package repository.outsourcing;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.OsDTO;

public class OsRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.outsourcing.osMapper";
	String statement;
	public Integer insertOs(OsDTO osDTO) {
		statement = namespace + ".insertOs";
		return sqlSession.update(statement, osDTO);
	}
	public List<OsDTO> getOsList(OsDTO osDTO){
		statement = namespace + ".getOsList";
		return sqlSession.selectList(statement, osDTO);		
	}
	public Integer listCount() {
		statement = namespace + ".listCount";
		return sqlSession.selectOne(statement);
	}

}
