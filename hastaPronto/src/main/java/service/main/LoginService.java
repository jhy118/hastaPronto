package service.main;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.LoginCommand;
import model.DTO.AuthInfo;
import repository.main.LoginRepository;

@Service
@Component
public class LoginService {
	@Autowired
	LoginRepository loginRepository;
	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	public String execute(LoginCommand loginCommand, Model model, HttpSession session) {
		AuthInfo authInfo = loginRepository.getLogin(loginCommand.getLoginId());
		if (authInfo == null) {
			model.addAttribute("notMachedId", "아이디가 일치하지 않습니다.");
		} else {
			if (bCryptPasswordEncoder.matches(loginCommand.getLoginPw(), authInfo.getLoginPw())) {
				session.setAttribute("authInfo", authInfo);
				return "redirect:/main";
			} else {
				model.addAttribute("notMachedPw", "비밀번호가 일치하지 않습니다.");
			}
		}
		return "main/login";
	}
}
