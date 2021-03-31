package service.osemployees;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import repository.osemployees.OsEmpRepository;

@Service
public class OsEmpDeleteService {
	@Autowired
	OsEmpRepository osEmpRepository;
	public void execute(String oseNo) {
		osEmpRepository.oseDelete(oseNo);
		
	}
}