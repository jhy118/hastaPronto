package repository.member;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.MemberDTO;

@Repository
@Component
public class MemberRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.member.memberMapper";
	String statement;
	public Integer insertMember(MemberDTO memberDTO) {
		statement = namespace + ".insertMember";
		return sqlSession.insert(statement, memberDTO);
	}
	public Integer updateMember(MemberDTO memberDTO) {
		statement = namespace + ".updateMember";
		return sqlSession.update(statement, memberDTO);
	}
}
