package service.res;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.ResCommand;
import model.DTO.ResDTO;
import repository.res.ResRepository;

@Service
public class ResModifyService {
	@Autowired
	ResRepository resRepository;
	public void execute(ResCommand resCommand, HttpSession session) {
	ResDTO resDTO = new ResDTO();
	resDTO.setRtNo(resCommand.getRtNo());
	
	// session에 저장된 파일명을 db에 있는 정보로부터 삭제하기 위해
	resDTO = (ResDTO)resRepository.selectRes(resDTO).get(0);
	List<String> list = (List<String>)session.getAttribute("imgList");
	
	String filePath = 
			session.getServletContext().getRealPath("WEB-INF/view/res/upload");
	if(list != null) {
		for(String img : list) {
			resDTO.setRtFile(resDTO.getRtFile().replace(img+"`", ""));
			File file = new File(filePath + "/" + img);
			if(file.exists()) file.delete();
			}
		session.removeAttribute("imgfile");
		}
	String rtFile = "";
	if(resDTO.getRtFile() != null) {
		rtFile = resDTO.getRtFile();
		}
	// 추가된 이미지가 있는지 확인
	if(resCommand.getRtFile() != null) {
		for(MultipartFile mf : resCommand.getRtFile()) {
			String original = mf.getOriginalFilename();
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-", "")+originalFileExtension;
			resDTO.setRtFile(rtFile+store+"`");
	// 하드에 저장
		File file = new File(filePath + "/" + store);
		try {
			mf.transferTo(file);
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
				}
			}
		}
		resDTO.setRtName(resCommand.getRtName());
		resDTO.setRtContent(resCommand.getRtContent());
		resRepository.resUpdate(resDTO);
	}
}
