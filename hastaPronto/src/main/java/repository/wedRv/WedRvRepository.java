package repository.wedRv;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.WedRvDTO;

@Repository
@Component
public class WedRvRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.wedRv.wedRvMapper";
	String statement;
	//wedRvInsert
	public Integer wedRvInsert(WedRvDTO wedRvDTO) {
		String statement = namespace + ".wedRvInsert";
		return sqlSession.update(statement, wedRvDTO);
	}//getWedRvList
	public List<WedRvDTO> getWedRvList(WedRvDTO wedRvDTO) {
		String statement = namespace + ".getWedRvList";
		return sqlSession.selectList(statement, wedRvDTO);
	}//updateWedRv
	public Integer updateWedRv(WedRvDTO wedRvDTO) {
		String statement = namespace + ".updateWedRv";
		return sqlSession.update(statement, wedRvDTO);
	}//deleteWedRv
	public Integer deleteWedRv(String wedRvNo) {
		String statement = namespace + ".deleteWedRv";
		return sqlSession.update(statement, wedRvNo);
	}
}
