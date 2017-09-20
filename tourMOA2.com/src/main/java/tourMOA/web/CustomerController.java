package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerController {
	
	/*고객센터 메인페이지*/
	@RequestMapping("customer/main.do")
	public String admin() {
		return "customer/main";
	} 
	
	/*공지사항리스트*/
	@RequestMapping("customer/noticeList.do")
	public String noticeList() {
		return "customer/noticeList";
	}
	
	/*여행후기*/
	@RequestMapping("customer/episodeList.do")
	public String episodeList() {
		return "customer/episodeList";
	}
	
	/*FAQ List*/
	@RequestMapping("customer/faqList.do")
	public String faqList() {
		return "customer/faqList";
	}
	
	/*QNA List*/
	@RequestMapping("customer/qnaList.do")
	public String qnaList() {
		return "customer/qnaList";
	}
	
	/*견적문의*/
	@RequestMapping("customer/estimateReq.do")
	public String estimateReq() {
		return "customer/estimateReq";
	}
}
