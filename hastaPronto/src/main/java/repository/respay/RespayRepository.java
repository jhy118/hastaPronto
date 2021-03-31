package repository.respay;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.RespayDTO;

public class RespayRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.respay.respayMapper";
	String statement;
	
	public Integer insertRespay(RespayDTO respayDTO) {
		statement = namespace + ".insertRespay";
		return sqlSession.insert(statement, respayDTO);
	}
	public RespayDTO selectRespay(RespayDTO respayDTO){
		statement = namespace + ".selectRespay";
		return sqlSession.selectOne(statement, respayDTO);
	}
	public Integer deleteRespay(String rtRvNo) {
		statement = namespace + ".deleteRespay";
		return sqlSession.delete(statement, rtRvNo);
	}
}
