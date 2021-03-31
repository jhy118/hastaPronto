package repository.addPayment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.ReservationRoomDTO;

@Repository
@Component
public class AddPaymentRepository {

	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.addPayment.addPaymentMapper";
	String statement;

	public List<String> getRvNo() {
		statement = namespace + ".getRvNo";
		return sqlSession.selectList(statement);
	}
}
