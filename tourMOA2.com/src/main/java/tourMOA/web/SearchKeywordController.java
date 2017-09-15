package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SearchKeywordController {
	/*키워드 검색부분*/
	@RequestMapping("search/searchKeyword.do")
	public String searchKeyword() throws Exception{		
		return "search/searchKeyword";
	}
	
	/*기간별 검색부분*/
	@RequestMapping("search/searchDate.do")
	public String searchDate() throws Exception{		
		return "search/searchDate";
	}
	
	/*가격대별 검색부분*/
	@RequestMapping("search/searchPrice.do")
	public String searchPrice() throws Exception{		
		return "search/searchPrice";
	}
}
