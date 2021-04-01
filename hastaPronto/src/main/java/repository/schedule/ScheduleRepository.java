package repository.schedule;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.OsDTO;
import model.DTO.OsEmpDTO;
import model.DTO.ScheduleDTO;
import model.DTO.WedCsDTO;

public class ScheduleRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace="mapper.schedule.schMapper";
	String statement;
	public Integer inserSch(ScheduleDTO scheduleDTO) {
		statement = namespace + ".insertSch";
		return sqlSession.update(statement,scheduleDTO);
	}
	public List<ScheduleDTO> getSchList(ScheduleDTO scheduleDTO) {
		statement = namespace + ".getSchList";
		return sqlSession.selectList(statement, scheduleDTO);
	}


}
