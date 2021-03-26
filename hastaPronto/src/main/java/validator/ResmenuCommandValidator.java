package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ResmenuCommandValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtMenu", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtMenuChar", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtMenuCon", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtMenuImage", "required");
		
	}
}
