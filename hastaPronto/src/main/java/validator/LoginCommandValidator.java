package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class LoginCommandValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "loginId", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "loginPw", "required");
	}
}
