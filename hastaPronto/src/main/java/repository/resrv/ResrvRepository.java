package repository.resrv;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.ResrvDTO;

@Repository
public class ResrvRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.resrv.resrvMapper";
	String statement;
	
	public Integer insertResrv(ResrvDTO resrvDTO) {
		statement = namespace + ".insertResrv";
		return sqlSession.insert(statement, resrvDTO);
	}
	public List<ResrvDTO> selectResrv(ResrvDTO resrvDTO){
		statement = namespace + ".selectResrv";
		return sqlSession.selectList(statement, resrvDTO);
	}
	public Integer countResrv() {
		statement = namespace + ".countResrv";
		return sqlSession.selectOne(statement);
	}
	public Integer updateResrv(ResrvDTO resrvDTO) {
		statement = namespace + ".updateResrv";
		return sqlSession.update(statement, resrvDTO);
	}
	public Integer deleteResrv(String rtRvNo) {
		statement = namespace + ".deleteResrv";
		return sqlSession.delete(statement, rtRvNo);
	}
}
