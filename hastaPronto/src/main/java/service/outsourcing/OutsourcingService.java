package service.outsourcing;


import org.springframework.beans.factory.annotation.Autowired;

import command.OsCommand;
import model.DTO.OsDTO;
import repository.outsourcing.OsRepository;

public class OutsourcingService {
	@Autowired
	OsRepository osRepository;
	public void execute(OsCommand osCommand) {
		OsDTO osDTO = new OsDTO();
		osDTO.setOsName(osCommand.getOsName());
		osDTO.setBsLicense(osCommand.getBsLicense());
		osDTO.setOsAddr(osCommand.getOsAddr());
		osDTO.setOsBusinessName(osCommand.getOsBusinessName());
		osDTO.setRepName(osCommand.getRepName());
		osDTO.setOsTel(osCommand.getOsTel());
		osDTO.setOsEmail(osCommand.getOsEmail());
		osRepository.insertOs(osDTO);
		
	}

}
