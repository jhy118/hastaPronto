package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class WedCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "wedName", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedChar", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedLocation", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedNum", "required");
	}
}
