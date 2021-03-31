package repository.wedCs;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.WedCsDTO;

@Repository
@Component
public class WedCsRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.wedCs.wedCsMapper";
	String statement;
	//wedCsInsert
	public Integer wedCsInsert(WedCsDTO wedCsDTO) {
		String statement = namespace + ".wedCsInsert";
		return sqlSession.update(statement, wedCsDTO);
	}//getWedCsList
	public List<WedCsDTO> getWedCsList(WedCsDTO wedCsDTO) {
		String statement = namespace + ".getWedCsList";
		return sqlSession.selectList(statement, wedCsDTO);
	}//updateWedCs
	public Integer updateWedCs(WedCsDTO wedCsDTO) {
		String statement = namespace + ".updateWedCs";
		return sqlSession.update(statement, wedCsDTO);
	}//deleteWedCs
	public Integer deleteWedCs(String wedCosNo) {
		statement = namespace + ".deleteWedCs";
		return sqlSession.delete(statement, wedCosNo);
	}
	
}
