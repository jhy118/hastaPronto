package service.outsourcing;


import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

import command.OsCommand;
import model.DTO.OsDTO;
import model.DTO.OsFileDTO;
import repository.outsourcing.OsRepository;

public class OutsourcingService {
	@Autowired
	OsRepository osRepository;
	public void execute(OsCommand osCommand, HttpSession session) {
		OsDTO osDTO = new OsDTO();
		osDTO.setOsName(osCommand.getOsName());
		osDTO.setBsLicense(osCommand.getBsLicense());
		osDTO.setOsAddr(osCommand.getOsAddr());
		osDTO.setOsBusinessName(osCommand.getOsBusinessName());
		osDTO.setRepName(osCommand.getRepName());
		osDTO.setOsTel(osCommand.getOsTel());
		osDTO.setOsEmail(osCommand.getOsEmail());
		
		OsFileDTO osFileDTO = new OsFileDTO();
		String path="WEB-INF/view/outsourcing/osFile";
		String filePath = session.getServletContext().getRealPath(path);
		String originalFileNames = "";
	    String storedFileNames = "";
	    String osFilesize = "";
	    try {
			  for(MultipartFile mf : osCommand.getReport()) {
		    	  String originalFileName = mf.getOriginalFilename();
		    	  String originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
		    	  String store = UUID.randomUUID().toString().replace("-", "")+originalFileExtension;
		    	  String filesize = Long.toString(mf.getSize());
		    	  originalFileNames += originalFileName + "`";
		    	  storedFileNames += store + "`";
		    	  osFilesize += filesize + "`";
		    	  File file = new File(filePath + "\\" + store);
		    	  mf.transferTo(file);
			  	  } 
		  }catch (Exception e) {
		}

	    osFileDTO.setOsOriginalfilename(originalFileNames);
	    osFileDTO.setOsStorefilename(storedFileNames);
	    osFileDTO.setOsFilesize(osFilesize);
	    
		osRepository.insertOs(osDTO);
		osRepository.insertOsFile(osFileDTO);

	}

}
