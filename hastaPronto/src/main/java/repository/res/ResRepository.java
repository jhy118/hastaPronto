package repository.res;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.DTO.ResDTO;

@Repository
public class ResRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.res.resMapper";
	String statement;
	public Integer insertRes(ResDTO resDTO) {
		statement = namespace + ".insertRes";
		return sqlSession.insert(statement, resDTO);
	}
	public List<ResDTO> selectRes(ResDTO resDTO){
		statement = namespace + ".selectRes";
		return sqlSession.selectList(statement, resDTO);
	}
	public Integer resCount() {
		statement = namespace + ".resCount";
		return sqlSession.selectOne(statement);
	}
	public Integer resUpdate(ResDTO resDTO) {
		statement = namespace + ".resUpdate";
		return sqlSession.update(statement, resDTO);
	}
	public Integer deleteRes(String rtNo) {
		statement = namespace + ".deleteRes";
		return sqlSession.delete(statement, rtNo);
	}
	
}



