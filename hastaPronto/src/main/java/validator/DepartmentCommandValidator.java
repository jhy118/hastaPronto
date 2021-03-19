package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class DepartmentCommandValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "depName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "depAddr", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "depPh", "required");
	}
}
