package repository.employee;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.EmployeeDTO;

@Repository
@Component
public class EmployeeRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.employee.employeeMapper";
	String statement;
	public Integer insertEmployee(EmployeeDTO employeeDTO) {
		statement = namespace + ".insertEmployee";
		return sqlSession.insert(statement, employeeDTO);
	}
	public List<EmployeeDTO> getEmployees(EmployeeDTO employeeDTO) {
		statement = namespace + ".getEmployees";
		return sqlSession.selectList(statement, employeeDTO);
	}
	public Integer getEmployeesCount() {
		statement = namespace + ".getEmployeesCount";
		return sqlSession.selectOne(statement);
	}
	public Integer updateEmployee(EmployeeDTO employeeDTO) {
		statement = namespace + ".updateEmployee";
		return sqlSession.update(statement, employeeDTO);
	}
	public int deleteEmployee(String empId) {
		statement = namespace + ".deleteEmployee";
		return sqlSession.update(statement, empId);
	}
	
}
