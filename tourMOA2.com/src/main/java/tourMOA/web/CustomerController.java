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
	
	/*칭찬합시다*/
	@RequestMapping("customer/praiseList.do")
	public String praiseList() {
		return "customer/praiseList";
	}
	
	/*Best여행가이드*/
	@RequestMapping("customer/bestGuide.do")
	public String bestGuide() {
		return "customer/bestGuide";
	}	
	
	/*고객만족도 조사*/
	@RequestMapping("customer/survey.do")
	public String survey() {
		return "customer/survey";
	}
	
	/*고객불편신고하기*/
	@RequestMapping("customer/complaintWrite.do")
	public String complaintWrite() {
		return "customer/complaintWrite";
	}
	
	/*소비자불만처리 절차안내*/
	@RequestMapping("customer/complaintProcess.do")
	public String complaintProcess() {
		return "customer/complaintProcess";
	}
	
	/*CCM이란?*/
	@RequestMapping("customer/ccmIs.do")
	public String ccmIs() {
		return "customer/ccmIs";
	}
	
	/*수상내역*/
	@RequestMapping("customer/awardsCcm.do")
	public String awardsCcm() {
		return "customer/awardsCcm";
	}
	
	/*결제방법*/
	@RequestMapping("customer/paymentArs.do")
	public String paymentArs() {
		return "customer/paymentArs";
	}
	
	/*여행상품권*/
	@RequestMapping("customer/giftcardBuy.do")
	public String giftcardBuy() {
		return "customer/giftcardBuy";
	}
	
	/*상담전화안내*/
	@RequestMapping("customer/helpline.do")
	public String helpline() {
		return "customer/helpline";
	}
}
