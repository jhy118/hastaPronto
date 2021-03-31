package validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import command.RoomReservationCommand;

public class RoomReservationCommandValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return false;
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "rmRvNum", "required");
		RoomReservationCommand roomResvCommand = (RoomReservationCommand) target;
		if (roomResvCommand.getRmAccount()[0].equals("")) {
			errors.rejectValue("rmAccount", "needCode");
		}
		if (roomResvCommand.getRmAccount()[1].equals("")) {
			errors.rejectValue("rmAccount", "needCardNum");
		}
		if (roomResvCommand.getRmAccount()[2].equals("")) {
			errors.rejectValue("rmAccount", "needMonth");
		}
		if (roomResvCommand.getRmAccount()[3].equals("")) {
			errors.rejectValue("rmAccount", "needYear");
		}

	}
}
