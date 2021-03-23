package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class NoticeCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noticeName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "startDate", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "endDate", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "announceDate", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "noticeContent", "required");
	}
}
