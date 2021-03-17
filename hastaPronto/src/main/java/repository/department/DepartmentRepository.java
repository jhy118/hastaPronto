package repository.department;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.DepartmentDTO;

@Repository
@Component
public class DepartmentRepository {
	@Autowired
	private SqlSession sqlSession;
	private String namespace = "mappers.department.departmentMapper";
	String statement;

	public int insertDepartment(DepartmentDTO deptDTO) {
		statement = namespace + ".insertDepartment";
		return sqlSession.insert(statement, deptDTO);
	}

	public List<DepartmentDTO> getDepartments(DepartmentDTO deptDTO) {
		statement = namespace + ".getDepartments";
		return sqlSession.selectList(statement, deptDTO);
	}

	public Integer getDepartmentsCount() {
		statement = namespace + ".getDepartmentsCount";
		return sqlSession.selectOne(statement);
	}

	public Integer updateDepartment(DepartmentDTO deptDTO) {
		statement = namespace + ".updateDepartment";
		return sqlSession.update(statement, deptDTO);
	}

	public Integer deleteDepartment(String depNo) {
		statement = namespace + ".deleteDepartment";
		return sqlSession.update(statement, depNo);
	}
	
}
