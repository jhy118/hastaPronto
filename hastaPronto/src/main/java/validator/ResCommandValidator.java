package validator;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class ResCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtContent", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rtFile", "required");	
		
	}
}



