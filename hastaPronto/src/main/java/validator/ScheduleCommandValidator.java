package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ScheduleCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		 ValidationUtils.rejectIfEmptyOrWhitespace(errors, "schDate", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "schName", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "schType", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "schNum", "required");

	}
}
