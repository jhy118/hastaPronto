package service.outsourcing;

import org.springframework.beans.factory.annotation.Autowired;

import repository.outsourcing.OsRepository;

public class OsDeleteService {
	@Autowired
	OsRepository osRepository;
	public void execute(String osNo) {
		osRepository.osDelete(osNo);
	}

}
