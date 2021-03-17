package service.announcement;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import command.AnnCommand;
import model.DTO.AuthInfo;
import model.DTO.AnnDTO;
import repository.announcement.AnnRepository;

public class AnnService {
   @Autowired
   BCryptPasswordEncoder bCryptPasswordEncoder;
   @Autowired
   AnnRepository annRepository;
   public void execute(AnnCommand annCommand, HttpSession session) {
      AnnDTO annDTO = new AnnDTO();
      annDTO.setAnnContent(annCommand.getAnnContent());
      annDTO.setAnnPw(bCryptPasswordEncoder.encode(annCommand.getAnnPw()));
      annDTO.setAnnSubject(annCommand.getAnnSubject());
      AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");      
      annDTO.setEmpId(authInfo.getLoginId());
      annRepository.insertAnn(annDTO);
   }
}