package service.wedCs;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.WedCsCommand;
import model.DTO.WedCsDTO;
import repository.wedCs.WedCsRepository;

@Service
@Component
public class WedCsModifyService {
	@Autowired
	WedCsRepository wedCsRepository;
	public void execute(WedCsCommand wedCsCommand) {
		WedCsDTO wedCsDTO = new WedCsDTO();
		wedCsDTO.setWedCosContent(wedCsCommand.getWedCosContent());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = df.parse(wedCsCommand.getWedCosDay());
		} catch (ParseException e) {
			e.printStackTrace();
		}	
		wedCsDTO.setWedCosDay(new Timestamp(date.getTime()));
		wedCsDTO.setWedCosEmail(wedCsCommand.getWedCosEmail());
		wedCsDTO.setWedCosName(wedCsCommand.getWedCosName());
		wedCsDTO.setWedCosNo(wedCsCommand.getWedCosNo());
		wedCsDTO.setWedCosNum(wedCsCommand.getWedCosNum());
		wedCsDTO.setWedNo(wedCsCommand.getWedNo());
		wedCsDTO.setWedCosPh(wedCsCommand.getWedCosPh());
		wedCsRepository.updateWedCs(wedCsDTO);
	}

}
