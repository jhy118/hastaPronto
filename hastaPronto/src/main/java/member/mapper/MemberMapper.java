package member.mapper;

import java.util.List;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import model.DTO.MemberDTO;

@Component
@Repository
public interface MemberMapper {
	public Integer insertMember(MemberDTO dto) throws Exception;
	public List<MemberDTO> selectByMember(MemberDTO memberDTO) throws Exception;
}
