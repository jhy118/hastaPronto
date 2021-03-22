package repository.applicant;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.ApplicantDTO;

@Repository
@Component
public class ApplicantRepository {
	@Autowired
	SqlSession sqlSession;
	String namespace = "mappers.applicant.applicantMapper";
	String statement;
	public Integer insertApplicant(ApplicantDTO applicantDTO) {
		statement = namespace + ".insertApplicant";
		return sqlSession.insert(statement, applicantDTO);
	}
	public Integer insertNotiAppRel(String noticeNo) {
		statement = namespace + ".insertNotiAppRel";
		return sqlSession.insert(statement, noticeNo);
	}
}
