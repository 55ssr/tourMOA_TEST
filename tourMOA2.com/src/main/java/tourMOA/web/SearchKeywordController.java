package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchKeywordController {
	@RequestMapping("search/searchKeyword.do")
	public String searchKeyword() throws Exception{		
		return "search/searchKeyword";
	}
}
