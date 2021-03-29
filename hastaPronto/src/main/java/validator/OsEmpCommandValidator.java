package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class OsEmpCommandValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "oseId", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osePw", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "oseCat", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osePh", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "oseEmail", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "oseAddr", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "oseName", "required");
		
	}

}
