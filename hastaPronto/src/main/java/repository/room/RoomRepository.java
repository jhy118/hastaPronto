package repository.room;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.RoomDTO;

@Repository
@Component
public class RoomRepository {
	@Autowired
	SqlSession sqlSession;
	String statement;
	String namespace = "mappers.room.roomMapper";
	
	public Integer insertRoom(RoomDTO roomDTO) {
		statement = namespace + ".insertRoom";
		return sqlSession.insert(statement, roomDTO);
	}

	public List<RoomDTO> getRoomList(RoomDTO roomDTO) {
		statement = namespace + ".getRoomList";
		return sqlSession.selectList(statement, roomDTO);
	}

	public Integer updateRoom(RoomDTO roomDTO) {
		statement = namespace + ".updateRoom";
		return sqlSession.update(statement, roomDTO);
	}

	public Integer deleteRoom(RoomDTO roomDTO) {
		statement = namespace + ".deleteRoom";
		return sqlSession.delete(statement, roomDTO);
	}
	
}
