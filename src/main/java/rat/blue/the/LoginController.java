package rat.blue.the;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping("/main")
	public void login(HttpServletRequest req, HttpServletResponse res) {
		String url = "https://kauth.kakao.com/oauth/authorize";
		url += "?client_id=79bbdf8e5a20d21e5549bb13fb8e44de";
		try {
			
			url	+= URLEncoder.encode("&redirect_uri=http://gdj16.gudi.kr:20006/hi", "UTF-8");
			url	+= "&response_type=code";
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	
	@RequestMapping("/hi")
	public void hi() {
		System.out.println("hi");
	}
}
