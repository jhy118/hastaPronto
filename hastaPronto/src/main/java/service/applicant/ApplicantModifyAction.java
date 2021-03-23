package service.applicant;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.ApplicantCommand;
import model.DTO.ApplicantDTO;
import repository.applicant.ApplicantRepository;

@Service
@Component
public class ApplicantModifyAction {
	@Autowired
	ApplicantRepository applicantRepository;

	public String execute(ApplicantCommand appCommand) {
		ApplicantDTO applicantDTO = new ApplicantDTO();
		applicantDTO.setAppNo(appCommand.getAppNo());
		applicantDTO.setAppAddr(appCommand.getAppAddr());
		applicantDTO.setAppPh(appCommand.getAppPh());
		applicantDTO.setSelfIntroduction(appCommand.getSelfIntroduction());
		Integer result = applicantRepository.updateApplicant(applicantDTO);
		if (result == 1) {
			return "redirect:/apc/applicantInfo/" + appCommand.getAppNo();
		}
		return "applicant/applicantModify";
	}
}
