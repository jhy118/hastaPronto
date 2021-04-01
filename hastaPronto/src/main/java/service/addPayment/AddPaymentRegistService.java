package service.addPayment;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import command.AddPayCommand;
import model.DTO.AddPayDTO;
import model.DTO.AddPayStatementDTO;
import repository.addPayment.AddPaymentRepository;

@Service
@Component
public class AddPaymentRegistService {
	@Autowired
	AddPaymentRepository addPaymentRepository;

	public void execute(AddPayCommand addPayCommand) {
		AddPayDTO addPayDTO = new AddPayDTO();
		addPayDTO.setRmRvNo(addPayCommand.getRmRvNo());
		addPayDTO.setTotalChar(addPayCommand.getTotalChar());
		addPayDTO.setUserId(addPayCommand.getUserId());
		addPayDTO.setApMethod(addPayCommand.getApMethod());
		addPaymentRepository.insertAddPay(addPayDTO);
		
		for(int i = 0; i < addPayCommand.getApsChar().length; i ++) {
			AddPayStatementDTO addPayStatementDTO = new AddPayStatementDTO();
			System.out.println(addPayCommand.getApsChar()[i]);
			System.out.println(addPayCommand.getApsNum()[i]);
			System.out.println(addPayCommand.getApsGName()[i]);
			System.out.println(addPayCommand.getGoodsNo()[i]);
			addPayStatementDTO.setApsChar(addPayCommand.getApsChar()[i]);
			addPayStatementDTO.setApsNum(addPayCommand.getApsNum()[i]);
			addPayStatementDTO.setApsGName(addPayCommand.getApsGName()[i]);
			addPayStatementDTO.setGoodsNo(addPayCommand.getGoodsNo()[i]);
			addPayStatementDTO.setUserId(addPayCommand.getUserId());
			addPayStatementDTO.setRmRvNo(addPayCommand.getRmRvNo());
			addPaymentRepository.insertAddPayStatement(addPayStatementDTO);
		}
	}
}
