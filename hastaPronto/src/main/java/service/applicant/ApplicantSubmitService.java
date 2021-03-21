package service.applicant;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.ApplicantCommand;
import model.DTO.ApplicantDTO;
import repository.applicant.ApplicantRepository;

@Service
@Component
public class ApplicantSubmitService {
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;
	@Autowired
	ApplicantRepository applicantRepository;

	public void execute(ApplicantCommand appCommand, String noticeNo) {
		ApplicantDTO applicantDTO = new ApplicantDTO();
		applicantDTO.setAppAddr(appCommand.getAppAddr());
		applicantDTO.setAppEmail(appCommand.getAppEmail());
		applicantDTO.setAppGender(appCommand.getAppGender());
		applicantDTO.setAppName(appCommand.getAppName());
		applicantDTO.setAppPh(appCommand.getAppPh());
		applicantDTO.setSelfIntroduction(appCommand.getSelfIntroduction());
		applicantDTO.setAppPw(bCryptPasswordEncoder.encode(appCommand.getAppPw()));
		System.out.println(appCommand.getAppBirth());
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		Date appBirth = null;
		try {
			appBirth = df.parse(appCommand.getAppBirth());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		applicantDTO.setAppBirth(appBirth);
		Integer result = applicantRepository.insertApplicant(applicantDTO);
		System.out.println(result);
		Integer result2 = applicantRepository.insertNotiAppRel(noticeNo);
		System.out.println(result2);
		
	}
}
