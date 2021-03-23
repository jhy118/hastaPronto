package service.applicant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.ApplicantDTO;
import repository.applicant.ApplicantRepository;

@Service
@Component
public class ConfirmOkService {
	@Autowired
	ApplicantRepository applicantRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	public String execute(String appEmail, String appPw, Model model) {
		ApplicantDTO applicantDTO = new ApplicantDTO();
		applicantDTO.setAppEmail(appEmail);
		applicantDTO = applicantRepository.getOneApplicant(applicantDTO);
		if (applicantDTO.getAppNo() != null) {
			if (bCryptPasswordEncoder.matches(appPw, applicantDTO.getAppPw())) {
				return "redirect:/apc/applicantInfo/" + applicantDTO.getAppNo();
			}
		}
		model.addAttribute("error", "아이디 또는 비밀번호가 틀렸습니다.");
		return "applicant/appConfirm";
	}
}
