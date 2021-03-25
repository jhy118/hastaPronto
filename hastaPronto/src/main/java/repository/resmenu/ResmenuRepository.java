package repository.resmenu;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.ResmenuDTO;

@Repository
public class ResmenuRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.resmenu.resmenuMapper";
	String statement;
	
	public Integer insertResmenu(ResmenuDTO resmenuDTO) {
		statement = namespace + ".insertResmenu";
		return sqlSession.insert(statement, resmenuDTO);
	}
	public List<ResmenuDTO> selectResmenu(ResmenuDTO resmenuDTO) {
		statement = namespace + ".selectResmenu";
		return sqlSession.selectList(statement, resmenuDTO);
	}
	public Integer resmenuCount() {
		statement = namespace + ".resmenuCount";
		return sqlSession.selectOne(statement);
	}
	public Integer updateResmenu(ResmenuDTO resmenuDTO) {
		statement = namespace + ".updateResmenu";
		return sqlSession.update(statement, resmenuDTO);
	}
	public Integer deleteResmenu(String rtMenuNo) {
		statement = namespace + ".deleteResmenu";
		return sqlSession.delete(statement, rtMenuNo);
	}
}
