package service.resmenu;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.ResmenuCommand;
import model.DTO.ResmenuDTO;
import repository.resmenu.ResmenuRepository;

@Service
public class ResMenuModifyService {
	@Autowired
	ResmenuRepository resmenuRepository;
	public void execute(ResmenuCommand resmenuCommand, HttpSession session) {
	ResmenuDTO resmenuDTO = new ResmenuDTO();
	resmenuDTO.setRtMenuNo(resmenuCommand.getRtMenuNo());
	
	resmenuDTO = (ResmenuDTO)resmenuRepository.selectResmenu(resmenuDTO).get(0);
	List<String> list = (List<String>)session.getAttribute("imgList");
	
	String filepath = 
			session.getServletContext().getRealPath("WEB-INF/view/resmenu/upload");
	if(list != null) {
		for(String img : list) {
			resmenuDTO.setRtMenuImage(resmenuDTO.getRtMenuImage().replace(img+"`", ""));
			File file = new File(filepath + "/" + img);
			if(file.exists()) file.delete();
		}
		session.removeAttribute("imgfile");
		}
	String rtMenuImage = "";
	if(resmenuDTO.getRtMenuImage() != null) {
		rtMenuImage = resmenuDTO.getRtMenuImage();
	}
	// 추가된 이미지가 있는지 확인 
	if(resmenuCommand.getRtMenuImage() != null) {
		for(MultipartFile mf : resmenuCommand.getRtMenuImage()) {
			String original = mf.getOriginalFilename();
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "")+originalFileExtension;
			resmenuDTO.setRtMenuImage(rtMenuImage+store+"`");
	// 하드에 저장
		File file = new File(filepath + "/" + store);
		try {
			mf.transferTo(file);
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			
			e.printStackTrace();
				}
			}
		}
		resmenuDTO.setRtMenu(resmenuCommand.getRtMenu());
		resmenuDTO.setRtMenuChar(resmenuCommand.getRtMenuChar());
		resmenuDTO.setRtMenuCon(resmenuCommand.getRtMenuCon());
		resmenuRepository.updateResmenu(resmenuDTO);
	}
}
