package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.MemberCommand;

public class MemberCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		MemberCommand check = (MemberCommand) target;
		if(!check.getMemPw().isEmpty()) {
			if(!check.isMemPwEqualsMemPwCon()) {
				errors.rejectValue("memPwCon", "nomatch");
			}
		}
		
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
