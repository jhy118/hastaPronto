package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class WedCsCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "wedCosName", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedCosEmail", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedCosPh", "required");
		//ValidationUtils.rejectIfEmpty(errors, "wedCosDay", "required");
	}
	
}
