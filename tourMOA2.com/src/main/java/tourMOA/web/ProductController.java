package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {
	/*상품 해외패키지페이지*/
	@RequestMapping("product/detail1.do")
	public String detail1() throws Exception{		
		return "product/detail1";		
	}
	
	/*상품 자유여행페이지*/
	@RequestMapping("product/detail2.do")
	public String detail2() throws Exception{		
		return "product/detail2";		
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
	/*상품 예약리스트페이지*/
	@RequestMapping("product/detailList.do")
	public String detailList() throws Exception{		
		return "product/detailList";		
	}
	
	/*상품 예약페이지*/
	@RequestMapping("product/detailPackage.do")
	public String detailPackage() throws Exception{		
		return "product/detailPackage";		
	}
}