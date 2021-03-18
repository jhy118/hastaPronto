package validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import repository.question.QuestionRepository;

public class QuestionCommandValidator implements Validator {
	@Autowired
	QuestionRepository questionRepository;

	@Override
	public boolean supports(Class<?> clazz) {

		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qnaPw", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qnaWriter", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qnaSubject", "required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "qnaContent", "required");

	}
}
