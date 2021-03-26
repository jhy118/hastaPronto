package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class WedResCommandValidator implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "wedRtName", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedRtChar", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedRtMname", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedRtLocation", "required");
		ValidationUtils.rejectIfEmpty(errors, "wedRtNum", "required");
	}
}
