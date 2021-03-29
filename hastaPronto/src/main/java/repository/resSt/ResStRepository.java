package repository.resSt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.ResStDTO;

@Repository
public class ResStRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.resSt.resStMapper";
	String statement;
	
	public Integer insertResSt(ResStDTO resStDTO) {
		statement = namespace + ".insertResSt";
		return sqlSession.insert(statement, resStDTO);
	}
	public List<ResStDTO> selectResSt(ResStDTO resStDTO) {
		statement = namespace + ".selectResSt";
		return sqlSession.selectList(statement, resStDTO);
	}
	public Integer countResSt() {
		statement = namespace  + ".countResSt";
		return sqlSession.selectOne(statement);
	}
}
