package service.wedRv;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.WedRvCommand;
import model.DTO.WedRvDTO;
import repository.wedRv.WedRvRepository;

@Service
@Component
public class WedRvModifyService {
	@Autowired
	WedRvRepository wedRvRepository;
	public void execute(WedRvCommand wedRvCommand) {
		WedRvDTO wedRvDTO = new WedRvDTO();
		wedRvDTO.setWedNo(wedRvCommand.getWedNo());
		wedRvDTO.setWedRtNo(wedRvCommand.getWedRtNo());
		wedRvDTO.setWedRvTime(wedRvCommand.getWedRvTime());
		wedRvDTO.setWedRvNum(wedRvCommand.getWedRvNum());
		wedRvDTO.setWedRvChar(wedRvCommand.getWedRvChar());
		wedRvDTO.setWedRvNo(wedRvCommand.getWedRvNo());
		wedRvRepository.updateWedRv(wedRvDTO);
	}

}
