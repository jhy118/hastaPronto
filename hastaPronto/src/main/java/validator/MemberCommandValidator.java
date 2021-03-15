package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class MemberCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memId", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memPw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memPwCon", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memPh", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memEmail", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memAddr", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memBirth", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "memGender", "required");
	}
}
