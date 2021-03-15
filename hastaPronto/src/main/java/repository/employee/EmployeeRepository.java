package repository.employee;

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
	
}
