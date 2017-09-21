package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PromotionController {
	
	/*출발확정 프로모션 상품*/
	@RequestMapping("promotion/timeGather.do")
	public String timeGather() throws Exception{
		return "promotion/timeGather";
	}
	
	/*출발확정 프로모션 상품을 선택했을 때 나열 되는 상품들*/
	@RequestMapping("promotion/unitList.do")
	public String unitList() throws Exception{
		return "promotion/unitList";
	}
	
	/*프로모션 상품 중 상세페이지*/
	@RequestMapping("promotion/detailFit.do")
	public String detailFit() throws Exception{
		return "promotion/detailFit";
	}
	
	/*쿠폰*/
	@RequestMapping("promotion/coupon.do")
	public String coupon() throws Exception{
		return "promotion/coupon";
	}
	
	/*쿠폰 상세페이지*/
	@RequestMapping("promotion/couponDetail.do")
	public String couponDetail() throws Exception{
		return "promotion/couponDetail";
	}
}
