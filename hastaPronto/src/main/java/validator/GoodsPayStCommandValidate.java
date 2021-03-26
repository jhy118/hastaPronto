package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class GoodsPayStCommandValidate implements Validator{
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}
	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmpty(errors, "orderContent", "required");
		ValidationUtils.rejectIfEmpty(errors, "detContent", "required");
		ValidationUtils.rejectIfEmpty(errors, "allPayment", "required");
		ValidationUtils.rejectIfEmpty(errors, "osNo", "required");
	}
}
