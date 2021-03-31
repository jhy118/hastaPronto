package service.wedCs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import repository.wedCs.WedCsRepository;

@Service
@Component
public class WedCsDeleteService {
	@Autowired
	WedCsRepository wedCsRepository;
	public void execute(String wedCosNo) {
		wedCsRepository.deleteWedCs(wedCosNo);
	}

}
