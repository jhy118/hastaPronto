package repository.wedding;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.AnnDTO;
import model.DTO.WedDTO;

public class WedRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.wedding.wedMapper";
	String statement;
	public Integer insertWed(WedDTO wedDTO) {
		statement = namespace + ".insertWed";
	    return sqlSession.update(statement, wedDTO);
	}
	public List<WedDTO> getWedList(WedDTO wedDTO){
		statement = namespace + ".getWedList";
		return sqlSession.selectList(statement, wedDTO);
	}//updateWedBro
	public Integer updateWedBro(WedDTO wedDTO) {
	    statement = namespace + ".updateWedBro";
	    return sqlSession.update(statement, wedDTO);
	}//wedBroDelete
	public Integer wedBroDelete(String wedNo) {
	    statement = namespace + ".wedBroDelete";
	    return sqlSession.delete(statement, wedNo);
	}
}
