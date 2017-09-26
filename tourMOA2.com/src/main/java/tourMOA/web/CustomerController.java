package tourMOA.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.example.sample.service.SampleDefaultVO;
import tourMOA.service.NoticeService;
import tourMOA.service.NoticeVO;

@Controller
public class CustomerController {
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	

	/*고객센터 메인페이지*/
	@RequestMapping("customer/main.do")
	public String admin() {
		return "customer/main";
	} 
	
	/*공지사항리스트*/
	@RequestMapping("customer/noticeList.do")
	public String selectNoticeList(@ModelAttribute("searchVO")SampleDefaultVO searchVO,Model model) throws Exception {
		
		List<?> list = noticeService.selectNoticeList(searchVO);
		
		model.addAttribute("resultList",list);
		
		return "customer/noticeList";
	}
	
	/*공지사항 작성 화면*/
	@RequestMapping("customer/noticeWrite.do")
	public String noticeWrite() {
		return "customer/noticeWrite";
	} 
	
	@RequestMapping("/noticeSave.do")
	public String insertNotice(NoticeVO vo) throws Exception {
		
		noticeService.insertNotice(vo);
		
		return "redirect:/noticeList.do";
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
	
	@RequestMapping("customer/estimateReqSave.do")
	public String insertEstimateReq() {
		return "customer/estimateReqSave";
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
