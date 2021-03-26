package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class RoomCommandValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rmName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rmChar", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rmContent", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rmPaycontent", "required");
	}
}
