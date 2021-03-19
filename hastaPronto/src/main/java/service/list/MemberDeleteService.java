package service.list;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.member.MemberListRepository;

@Service
public class MemberDeleteService {
	@Autowired
	MemberListRepository memberListRepository;
	public void execute(String userId) {
		memberListRepository.deleteMember(userId);
	}
}
