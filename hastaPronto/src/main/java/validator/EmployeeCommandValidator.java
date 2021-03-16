package validator;

import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;


public class EmployeeCommandValidator implements Validator{
	private static final String emailRegExp = 
			"^[_A-Za-z0-9-]+(.[_A-Za-z0-9-]+)*@(?:\\w+\\.)+\\w+$";
	private Pattern pattern;
	public EmployeeCommandValidator() {
		pattern = Pattern.compile(emailRegExp);
	}
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
