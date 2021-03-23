package service.applicant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.DTO.ApplicantDTO;
import repository.applicant.ApplicantRepository;

@Service
@Component
public class ApplicantInfoService {
	@Autowired
	ApplicantRepository applicantRepository;

	public void execute(String appNo, Model model) {
		ApplicantDTO applicantDTO = new ApplicantDTO();
		applicantDTO.setAppNo(appNo);
		applicantDTO= applicantRepository.getOneApplicant(applicantDTO);
		model.addAttribute("applicant", applicantDTO);
	}
}
