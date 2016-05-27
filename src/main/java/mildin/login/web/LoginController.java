package mildin.login.web;

import mildin.login.service.LoginVO;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

	@RequestMapping(value = "/LoginView.do")
	public String loginView(ModelMap model) throws Exception{
		System.out.println("로그인");
		model.addAttribute("loginVo", new LoginVO());
		return "login/LogInPage";
	}
	
	@RequestMapping(value = "/LoginCheck.do")
	public String loginCheck(LoginVO loginVo ,ModelMap model) throws Exception{
		
		String id = loginVo.getId();
		String password = loginVo.getPassword();
		System.out.println("id : " + id);
		System.out.println("password : " + password);
		
		model.addAttribute("loginVo", loginVo);
		
		return "contents/mainPage";
	}
}
