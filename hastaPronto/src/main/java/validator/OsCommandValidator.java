package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class OsCommandValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		 ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osName", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "bsLicense", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osAddr", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osBusinessName", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "repName", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osTel", "required");
	      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "osEmail", "required");
	}

	
}
