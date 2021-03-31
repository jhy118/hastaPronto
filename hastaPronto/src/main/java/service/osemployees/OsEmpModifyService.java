package service.osemployees;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import command.OsCommand;
import command.OseCommand;
import model.DTO.AuthInfo;
import model.DTO.OsEmpDTO;
import repository.osemployees.OsEmpRepository;

public class OsEmpModifyService {
@Autowired
OsEmpRepository osEmpRepository;
	public void execute(OseCommand oseCommand, HttpSession session) {
		AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");

		OsEmpDTO osEmpDTO = new OsEmpDTO();
		osEmpDTO.setOseNo(oseCommand.getOseNo());
		List<OsEmpDTO> list = osEmpRepository.getOsEmpList(osEmpDTO);
		osEmpDTO.setOseName(oseCommand.getOseName());
		osEmpDTO.setOseCat(oseCommand.getOseCat());
		osEmpDTO.setOsePh(oseCommand.getOsePh());
		osEmpDTO.setOseEmail(oseCommand.getOseEmail());
		osEmpDTO.setOseAddr(oseCommand.getOseAddr());
		
		osEmpRepository.oseUpdate(osEmpDTO);
		}		
	}

