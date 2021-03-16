package repository.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.DTO.MemberDTO;

public class MemberListRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "mappers.member.memberMapper";
	String statement;
	public List<MemberDTO> getMemList(MemberDTO memberDTO){
		statement = namespace + ".selectMember";
		return sqlSession.selectList(statement, memberDTO);
	}
	public Integer getMemCount() {
		statement = namespace + ".selectCount";
		return sqlSession.selectOne(statement);
	}
}
