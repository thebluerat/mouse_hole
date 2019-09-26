package rat.blue.the;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/main")
	public void login(HttpServletRequest req, HttpServletResponse res) {
		String url = "https://kauth.kakao.com";
	}
	
}
