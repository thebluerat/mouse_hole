package rat.blue.the;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@Autowired
	SqlSession session;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		
		return "main";
	}
	
	@RequestMapping(value = "/room", method = RequestMethod.GET)
	public String room() {
		
		return "room";
	}
	
	@RequestMapping(value = "/draw", method = RequestMethod.GET)
	public String draw() {
		
		return "draw";
	}
	
}
