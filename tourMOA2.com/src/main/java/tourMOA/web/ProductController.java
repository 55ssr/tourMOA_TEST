package tourMOA.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tourMOA.service.GoodsService;
import tourMOA.service.GoodsVO;

@Controller
public class ProductController {
	
	@Resource(name = "goodsService")
	private GoodsService goodsService;
	
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
	
	@RequestMapping("product/locList.do")
	public String locList() throws Exception{
		return "product/locList";
	}

	@RequestMapping("product/unitList.do")
	public String unitList(@RequestParam("code") String code, GoodsVO vo, Model model) throws Exception{
		vo = goodsService.selectUnitDetail(vo);
		model.addAttribute("vo", vo);
		return "product/unitList";
	}
	/*상품 예약리스트페이지*/
	@RequestMapping("product/detailList.do")
	public String detailList() throws Exception{		
		return "product/detailList";		
	}
	
	/*상품 예약페이지*/
	@RequestMapping("product/detailPackage.do")
	public String detailPackage(@RequestParam("unq") int unq, GoodsVO vo, Model model) throws Exception{		
		vo = goodsService.selectGoodsDetail(vo);
		model.addAttribute("vo", vo);
		return "product/detailPackage";		
	}
	/*상품 예약 Step01 로그인 모달 창*/
	@RequestMapping("product/reserveStep01.do")
	public String reserveStep01() throws Exception{
		return "product/reserveStep01";
	}
	
	
}