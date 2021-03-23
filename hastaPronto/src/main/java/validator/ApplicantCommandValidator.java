package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.ApplicantCommand;

public class ApplicantCommandValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appPh", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appPw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appPwCon", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appName", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appEmail", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appAddr", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appBirth", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "selfIntroduction", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "appGender", "required");
		ApplicantCommand appCommand = (ApplicantCommand) target;
		if (!appCommand.appPwisEqualsAppPwCon()) {
			errors.rejectValue("appPwCon", "nomatch");
		}
	}
}
