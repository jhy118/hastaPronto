package repository.outsourcing;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.OsDTO;
import model.DTO.OsFileDTO;

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
	public List<OsDTO> osUpdate(OsDTO osDTO) {
		statement = namespace + ".osUpdate";
		return sqlSession.selectList(statement, osDTO);		
	}
	public Integer osDelete(String osNo) {
		statement = namespace + ".osDelete";
		return sqlSession.delete(statement, osNo);
	}
	
	public Integer insertOsFile(OsFileDTO osFileDTO) {
		statement = namespace + ".insertOsFile";
		return sqlSession.update(statement, osFileDTO);		
	}
	public List<OsFileDTO> getOsFileList(OsFileDTO osFileDTO){
		statement = namespace + ".getOsFileList";
		return sqlSession.selectList(statement, osFileDTO);		
	}
	public List<OsFileDTO> osFileUpdate(OsFileDTO osFileDTO) {
		statement = namespace + ".osFileUpdate";
		return sqlSession.selectList(statement, osFileDTO);		
	}

}
