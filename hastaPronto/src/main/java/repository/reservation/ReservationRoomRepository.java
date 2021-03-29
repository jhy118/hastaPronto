package repository.reservation;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.ReservationRoomDTO;
import model.DTO.RoomDTO;

@Repository
@Component
public class ReservationRoomRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.reservation.resRoomMapper";
	String statement;
	public RoomDTO getVacancy(ReservationRoomDTO rrDTO) {
		statement = namespace + ".getVacancy";
		return sqlSession.selectOne(statement, rrDTO);
	}
}
