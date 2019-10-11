package rat.blue.the;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;

import net.sf.json.JSONObject;

@Controller
public class LoginController {

	@CrossOrigin
	@RequestMapping("/api")
	public void api(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String key = req.getParameter("key");
		System.out.println(key);
		
		String userUrl = "https://kapi.kakao.com/v2/user/me";
		userUrl += "?access_token=" + key;
		HashMap<String, Object> resultMap = HttpUtil.getUrl(userUrl);
		System.out.println(resultMap);
		
		JSONObject jsonObject = JSONObject.fromObject(resultMap);
		res.setContentType("application/json; charset=utf-8");
		res.getWriter().write(jsonObject.toString());
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String key = req.getParameter("key");
		
		return "redirect:/";
	}
	
	@RequestMapping("/login")
	public void login(HttpServletRequest req, HttpServletResponse res) {
		try {
			String url = "https://accounts.kakao.com/login?continue=";
			String url2 = "https://kauth.kakao.com/oauth/authorize";
			url2 += "?client_id=79bbdf8e5a20d21e5549bb13fb8e44de";
			url2 += "&redirect_uri=http://gdj16.gudi.kr:20006/hi";
			url2 += "&response_type=code";
			url += URLEncoder.encode(url2, "UTF-8");
			System.out.println(url);
			res.sendRedirect(url);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
			
	}
	
	@RequestMapping("/hi")
	public String hi(HttpServletRequest req, Model model) {
		HashMap<String, Object> resultMap = null;
		try {
			String code = req.getParameter("code");
			System.out.println(code);
			String url = "https://kauth.kakao.com/oauth/token";
			url += "?client_id=79bbdf8e5a20d21e5549bb13fb8e44de&redirect_uri=";
			url	+= URLEncoder.encode("http://gdj16.gudi.kr:20006/hi", "UTF-8");
			url	+= "&code=" + code;
			url += "&grant_type=authorization_code";
			resultMap = HttpUtil.getUrl(url);
			System.out.println(resultMap);
			String access_token = resultMap.get("access_token").toString();
			
			
			String userUrl = "https://kapi.kakao.com/v2/user/me";
			userUrl += "?access_token=" + access_token;
			resultMap = HttpUtil.getUrl(userUrl);
			System.out.println(resultMap);
			
			model.addAttribute("access_token", access_token);
			model.addAttribute("user", resultMap);
			
			HttpSession hs = req.getSession();
				
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			} 
			return "redirect:/room";
		}
	}


