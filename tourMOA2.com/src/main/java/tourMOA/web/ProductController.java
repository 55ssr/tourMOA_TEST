package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	/*상품 메인페이지*/
	@RequestMapping("product/main.do")
	public String main() throws Exception{		
		return "product/main";		
	}
	
	/*기업단체문의*/
	@RequestMapping("product/biztravel.do")
	public String biztravel() throws Exception{		
		return "product/biztravel";		
	}
	
	/*해당상품 지역별 메인페이지*/
	@RequestMapping("product/locMain.do")
	public String locMain() throws Exception{		
		return "product/locMain";		
	}
}
