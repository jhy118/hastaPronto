package repository.wedRt;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.WedDTO;
import model.DTO.WedResDTO;

@Repository
public class WedRtRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.wedRes.wedRtMapper";
	String statement;
	public Integer insertWedRt(WedResDTO wedResDTO) {
		statement = namespace + ".insertWedRt";
		return sqlSession.update(statement, wedResDTO);
	}//getWedRtList
	public List<WedResDTO> getWedRtList(WedResDTO wedResDTO){
		statement = namespace + ".getWedRtList";
		return sqlSession.selectList(statement, wedResDTO);
	}//updateWedRt
	public Integer updateWedRt(WedResDTO wedResDTO) {
	    statement = namespace + ".updateWedRt";
	    return sqlSession.update(statement, wedResDTO);
	}//wedRtDelete
	public Integer wedRtDelete(String wedRtNo) {
	    statement = namespace + ".wedRtDelete";
	    return sqlSession.delete(statement, wedRtNo);
	}
}
