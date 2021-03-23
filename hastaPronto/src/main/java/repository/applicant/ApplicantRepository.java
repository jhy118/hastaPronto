package repository.applicant;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.ApplicantDTO;
import model.DTO.NoticeDTO;

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

	public List<ApplicantDTO> getApplicant(NoticeDTO noticeDTO) {
		statement = namespace + ".getApplicant";
		return sqlSession.selectList(statement, noticeDTO);
	}

	public Integer countApplicant(Integer noticeNo) {
		statement = namespace + ".countApplicant";
		return sqlSession.selectOne(statement, noticeNo);
	}

	public ApplicantDTO getOneApplicant(ApplicantDTO applicantDTO) {
		statement = namespace + ".getOneApplicant";
		return sqlSession.selectOne(statement, applicantDTO);
	}

	public Integer updateApplicant(ApplicantDTO applicantDTO) {
		statement = namespace + ".updateApplicant";
		return sqlSession.update(statement, applicantDTO);
	}
}