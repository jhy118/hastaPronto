package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

public class AnnCommandValidator implements Validator{
   @Override
   public boolean supports(Class<?> clazz) {
      return false;
   }
   @Override
   public void validate(Object target, Errors errors) {
      ValidationUtils.rejectIfEmpty(errors, "annSubject", "required");
      ValidationUtils.rejectIfEmpty(errors, "annContent", "required");
   }
}