package service.announcement;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import controller.PageAction;
import model.DTO.AnnDTO;
import model.DTO.StartEndPageDTO;
import repository.announcement.AnnRepository;

@Service
@Component
public class AnnListService {
	@Autowired
	AnnRepository annRepository;
   public void execute(Integer page, Model model) {
	   int limit = 10;
	   int limitPage = 10;
	   Long startRow = ((long)page -1) * limit + 1;
	   Long endRow = startRow + limit - 1;
	   AnnDTO annDTO = new AnnDTO();
	   annDTO.setStartEndPageDTO(new StartEndPageDTO(startRow, endRow));
	   List<AnnDTO> list = annRepository.getAnnList(annDTO);
	   Integer count = annRepository.getCount();
	   model.addAttribute("count", count);
	   model.addAttribute("list", list);
	   
	   PageAction pageAction = new PageAction();
	   pageAction.page(model, count, limit, limitPage, page, "annList?");
   }
}