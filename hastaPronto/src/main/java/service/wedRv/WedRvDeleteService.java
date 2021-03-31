package service.wedRv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import repository.wedRv.WedRvRepository;

@Service
@Component
public class WedRvDeleteService {
	@Autowired
	WedRvRepository wedRvRepository;
	public void execute(String wedRvNo) {
		wedRvRepository.deleteWedRv(wedRvNo);
	}

}
