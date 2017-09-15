package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LimitedController {
	
	@RequestMapping("limited/limitedList.do")
	public String limitedList() throws Exception{
		return "limited/limitedList";
	}
	
	@RequestMapping("limited/limitedDetail.do")
	public String limitedDetail() throws Exception{
		return "limited/limitedDetail";
	}
	
}
