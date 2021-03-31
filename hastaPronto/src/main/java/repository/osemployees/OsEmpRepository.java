package repository.osemployees;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.OsDTO;
import model.DTO.OsEmpDTO;

public class OsEmpRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.osEmployees.osEmpMapper";
	String statement;
	public Integer insertOsEmp(OsEmpDTO osEmpDTO) {
		statement = namespace + ".insertOsEmp";
		return sqlSession.update(statement, osEmpDTO);
	}
	public Integer listCount() {
		statement = namespace + ".osemplistCount";
		return sqlSession.selectOne(statement);
	}
	public List<OsEmpDTO> getOsEmpList(OsEmpDTO osEmpDTO) {
		System.out.println(osEmpDTO.getOseNo());
		statement = namespace + ".getOsEmpList";
		return sqlSession.selectList(statement, osEmpDTO);
	}
	public List<OsEmpDTO> oseUpdate(OsEmpDTO osEmpDTO) {
		statement = namespace + ".oseUpdate";
		return sqlSession.selectList(statement,osEmpDTO);
	}
	public Integer oseDelete(String oseNo) {
		statement = namespace + ".oseDelete";
		return sqlSession.delete(statement, oseNo);
	}
}
