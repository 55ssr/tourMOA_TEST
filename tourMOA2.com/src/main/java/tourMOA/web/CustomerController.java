package tourMOA.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tourMOA.service.DefaultListVO;
import tourMOA.service.EstimateService;
import tourMOA.service.EstimateVO;
import tourMOA.service.NoticeService;
import tourMOA.service.NoticeVO;

@Controller
public class CustomerController {
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@Resource(name = "estimateService")
	private EstimateService estimateService;
	

	/*고객센터 메인페이지*/
	@RequestMapping("customer/main.do")
	public String admin() {
		return "customer/main";
	} 
	
	/*공지사항리스트*/
	@RequestMapping("customer/noticeList.do")
	public String selectNoticeList(@ModelAttribute("searchVO") DefaultListVO searchVO,Model model) throws Exception {
		
		System.out.println("!");
		/*1. 한 화면에 출력 할 행 갯수, 한 화면에 출력할 페이지 갯수 */
		int recordCountPerPage = 10;
		int pageSize = 5;
		
		
		/*2.총 데이터 갯수*/
		int totalCount = noticeService.selectNoticeTotal(searchVO);
		/*3. 화면 출력 할 페이지 번호*/
		int pageIndex = searchVO.getPageIndex();
		
		/*4. 화면 출력할 페이징의 시작 번호, 끝 번호*/
		int firstPage = ((int) Math.floor((pageIndex-1)/pageSize)*pageSize) + 1;
		int lastPage = firstPage + pageSize - 1;
		
		/*5. 화면 출력할 행(데이터)의 시작 번호, 끝 번호*/
		int firstIndex = (pageIndex-1) * 10 + 1;
		int lastIndex = firstIndex + (recordCountPerPage - 1);
		
		/*6. 총 페이지 갯수*/
		int totalPage = (int) Math.ceil((double) totalCount / recordCountPerPage);
		
		/*7. [이전] / [다음] 처리 할 변수 지정*/
		int before = 0; // 링크 없음
		if (firstPage > 1) before = 1;
		
		int next = 0; // 링크 없음
		if (lastPage < totalPage) next = 1;
		/*8. 행번호*/
		int number  = totalCount - ((pageIndex-1) * recordCountPerPage);
		
		searchVO.setFirstIndex(firstIndex);
		searchVO.setLastIndex(lastIndex);
		
		System.out.println("11");
		List<?> noticeList = noticeService.selectNoticeList(searchVO);
		System.out.println("22");
		
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("firstPage", firstPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("before", before);
		model.addAttribute("next", next);
		model.addAttribute("number", number);
		
		model.addAttribute("resultList", noticeList);
		
		return "customer/noticeList";
		
	}
	
	/*공지사항 작성 화면*/
	@RequestMapping("customer/noticeWrite.do")
	public String noticeWrite() {
		return "customer/noticeWrite";
	} 
	
	/*공지사항 View 화면*/
	@RequestMapping("customer/noticeDetail.do")
	public String noticeDetail(NoticeVO vo, Model model) throws Exception {
		System.out.println("vo ======================== " + vo.getUnq());
		vo = noticeService.selectNoticeDetail(vo);
		
		model.addAttribute("vo", vo);
		return "customer/noticeDetail";
	}
	@RequestMapping("/noticeSave.do")
	@ResponseBody public Map<String, Object> insertNotice(NoticeVO vo) throws Exception {
		String result = "";
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("vo ======================== " + vo.getTitle());
		System.out.println("vo ======================== " + vo.getAllview());
		result = noticeService.insertNotice(vo);
		if(result == null) result = "ok";
		map.put("result", result);
		
		return map;
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
	
	/*견적문의 저장*/
	@RequestMapping("customer/estimateReqSave.do")
	@ResponseBody public Map<String, Object> insertEstimateReq(EstimateVO vo) throws Exception {
		
		System.out.println("test");
		String result="";
		int cnt = 0;
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		result = estimateService.insertEstimateReq(vo);
		if(result == null) {
			result = "ok";
		}
		map.put("result", result);
		return map;
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
