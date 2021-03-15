package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class EmployeeCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empId", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empPh", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empEmail", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empAddr", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empBirth", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "empAccount", "required");
	}
}
