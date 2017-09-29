package tourMOA.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import tourMOA.service.MemberService;
import tourMOA.service.MemberVO;

@Controller
public class MypageController {
	
	/** MappingJackson2JsonView */
	@Resource(name = "jsonView")
	protected MappingJackson2JsonView jsonView;
	
	@Resource(name ="memberService")
	private MemberService memberService; 
	/*마이페이지 메인*/
	@RequestMapping("mypage/main.do")
	public String main() throws Exception{		
		return "mypage/main";
	}
	
	/*마이페이지 회원가입 1단계*/
	@RequestMapping("mypage/join.do")
	public String join() throws Exception{		
		return "mypage/join";
	}
	
	/*마이페이지 로그인*/
	@RequestMapping("mypage/login.do")
	public String login() throws Exception{		
		return "mypage/login";
	}
	
	/*마이페이지 아이디 찾기*/
	@RequestMapping(value = "/mypage/findIdRe.do")
	@ResponseBody public Map<String, Object> findId(MemberVO vo) throws Exception {
		int cnt = 0;
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		cnt = memberService.findId(vo);
		
		map.put("cnt", cnt);

		return map;
	}
	
	@RequestMapping("mypage/findId.do")
	public String findId1() throws Exception{		
		return "mypage/findId";
	}
	
	/*마이페이지 비밀번호 찾기*/
	@RequestMapping("mypage/findPw.do")
	public String findPw() throws Exception{		
		return "mypage/findPw";
	}
	@RequestMapping(value = "/mypage/findPwRe.do")
	@ResponseBody public Map<String, Object> findPwRe(MemberVO vo) throws Exception {
		int cnt = 0;
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		cnt = memberService.findPwRe(vo);
		
		map.put("cnt", cnt);

		return map;
	}
	
	/*마이페이지 회원가입 2단계*/
	@RequestMapping("mypage/joinStep02.do")
	public String joinStep02() throws Exception{	
		
		return "mypage/joinStep02";
	}
	
	/*마이페이지 회원가입 3단계*/
	@RequestMapping("mypage/joinStep03.do")
	public String selectjoinStep03() throws Exception{	
		
		return "mypage/joinStep03";
	}
	
	@RequestMapping(value="/mypage/insertJoinSave.do")
	@ResponseBody public Map<String,Object> insertJoinSave(MemberVO vo) throws Exception{
		
		String result = "";
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println(vo.getId());
		result = memberService.insertMemberJoin(vo);
		if(result == null) result = "ok";
		map.put("result", result);
		
		return map;
	}
	
	/*마이페이지 세션체크부문*/
	@RequestMapping("mypage/sessionCheckJSON.do")
	public String sessionCheckJSON() throws Exception{		
		return "mypage/joinStep02";
	}
	
	/*마이페이지 아이디 중복확인 부문*/
	@RequestMapping(value = "/mypage/selectCustIdDuplication.do")
	@ResponseBody public Map<String, Object> selectCustIdDuplication(MemberVO vo) 
			throws Exception {
		int cnt = 0;
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		cnt = memberService.selectCustIdDuplication(vo);
		
		map.put("cnt", cnt);

		return map;
	}
	
	/*마이페이지 우편번호 찾기 부문*/
	@RequestMapping("mypage/selectZipCodeLayer.do")
	public String selectZipCodeLayer() throws Exception{		
		return "mypage/joinStep03";
	}
	
	/*마이페이지 회원가입 4단계*/
	@RequestMapping("mypage/joinStep04.do")
	public String joinStep04() throws Exception{		
		return "mypage/joinStep04";
	}
	
	/*마이페이지 회원가입 5단계*/
	@RequestMapping("mypage/joinStep05.do")
	public String joinStep05() throws Exception{		
		return "mypage/joinStep05";
	}
	
	/*마이페이지 회원정보 수정1단계*/
	@RequestMapping("mypage/accountPwReaffirm.do")
	public String accountPwReaffirm() throws Exception{		
		return "mypage/accountPwReaffirm";
	}
	
	/*마이페이지 회원정보 수정 상세페이지단계*/
	@RequestMapping("mypage/accountDetailUpdate.do")
	public String accountDetailUpdate() throws Exception{		
		return "mypage/accountDetailUpdate";
	}
	
	/*마이페이지 비회원 예약코드 출력*/
	@RequestMapping("mypage/selectCodeList.do")
	public String selectCodeList() throws Exception{		
		return "mypage/login";
	}
	
	/*마이페이지 비회원 예약코드 출력*/
	@RequestMapping("mypage/reserveList.do")
	public String reserveList() throws Exception{		
		return "mypage/reserveList";
	}
	
	/*마이페이지 관심상품 출력*/
	@RequestMapping("mypage/wishList.do")
	public String wishList() throws Exception{		
		return "mypage/wishList";
	}
	
	/*마이페이지 관심상품 출력*/
	@RequestMapping("mypage/today.do")
	public String today() throws Exception{		
		return "mypage/today";
	}
	
	/*마이페이지 상담문의 출력*/
	@RequestMapping("mypage/inquiryList.do")
	public String inquiryList() throws Exception{		
		return "mypage/inquiryList";
	}
	
	/*마이페이지 여행이야기 리스트*/
	@RequestMapping("mypage/myPostList.do")
	public String myPostList() throws Exception{		
		return "mypage/myPostList";
	}
	
	/*마이페이지 비밀번호 변경*/
	@RequestMapping("mypage/accountPwUpdate.do")
	public String accountPwUpdate() throws Exception{		
		return "mypage/accountPwUpdate";
	}
	
	/*마이페이지 비밀번호 변경적용*/
	@RequestMapping("mypage/accountPwUpdateProc.do")
	public String accountPwUpdateProc() throws Exception{		
		return "mypage/accountPwUpdate";
	}
	
	/*마이페이지 여행상품권안내*/
	@RequestMapping("mypage/giftcardBuy.do")
	public String giftcardBuy() throws Exception{		
		return "mypage/giftcardBuy";
	}
	/*Login Session*/
	@RequestMapping("/loginSession.do")
	@ResponseBody public Map<String, Object> LoginSession(MemberVO vo,HttpSession session,HttpServletRequest request) throws Exception {
		boolean result = memberService.loginSession(vo,session);
		HashMap<String, Object> map = new HashMap<String, Object>();
		String id = request.getParameter("loginId");
		String pwd = request.getParameter("loginPwd");
		if(result==true){
			map.put("msg", "ok");
			session.setAttribute("id", id);
			session.setAttribute("pwd", pwd);
			/*mav.setViewName("/main.do");*/
		}else{
			map.put("msg", "fail");
		}
		
		return map;
	}
}
