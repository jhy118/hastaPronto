package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;

import command.AnswerCommand;

public class AnswerCommandValidator {
	public void validate(AnswerCommand answerCommand, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ansSubject", "requierd");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "ansContent", "requierd");
		
	}
}
