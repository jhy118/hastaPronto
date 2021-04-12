package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ResrvCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtrvNum", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtRvDay", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtRvTime", "required");
		
	}
}
