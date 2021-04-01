package repository.reservation;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.PaymentRoomDTO;
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

	public Integer insertRoomResv(ReservationRoomDTO resvDTO) {
		statement = namespace + ".insertRoomResv";
		return sqlSession.insert(statement, resvDTO);
	}

	public Integer insertPaymentRoom(PaymentRoomDTO paymentRoomDTO) {
		statement = namespace + ".insertPaymentRoom";
		return sqlSession.insert(statement, paymentRoomDTO);
	}

	public List<ReservationRoomDTO> getRoomResv(ReservationRoomDTO resvRoomDTO) {
		statement = namespace + ".getRoomResv";
		return sqlSession.selectList(statement, resvRoomDTO);
	}

	public Integer getCount(ReservationRoomDTO resvRoomDTO) {
		statement = namespace + ".getCount";
		return sqlSession.selectOne(statement, resvRoomDTO);
	}

	public Integer deleteRoomReservation(ReservationRoomDTO resvRoomDTO) {
		statement = namespace + ".deleteRoomReservation";
		return sqlSession.update(statement, resvRoomDTO);
	}

	public Integer deleteRoomPayment(PaymentRoomDTO paymentRoomDTO) {
		statement = namespace + ".deleteRoomPayment";
		return sqlSession.update(statement, paymentRoomDTO);
	}

	public List<ReservationRoomDTO> getNoPayedList(List<String> rvNoList) {
		statement = namespace + ".getNoPayedList";
		return sqlSession.selectList(statement, rvNoList);
	}
}