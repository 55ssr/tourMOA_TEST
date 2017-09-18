package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController {
	
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
	
	/*마이페이지 아이디/비밀번호 찾기*/
	@RequestMapping("mypage/findId.do")
	public String findId() throws Exception{		
		return "mypage/findId";
	}
	
	/*마이페이지 회원가입 2단계*/
	@RequestMapping("mypage/joinStep02.do")
	public String joinStep02() throws Exception{		
		return "mypage/joinStep02";
	}
	
	/*마이페이지 회원가입 3단계*/
	@RequestMapping("mypage/joinStep03.do")
	public String joinStep03() throws Exception{		
		return "mypage/joinStep03";
	}
	
	/*마이페이지 세션체크부문*/
	@RequestMapping("mypage/sessionCheckJSON.do")
	public String sessionCheckJSON() throws Exception{		
		return "mypage/joinStep02";
	}
	
	/*마이페이지 아이디 중복확인 부문*/
	@RequestMapping("mypage/selectCustIdDuplication.do")
	public String selectCustIdDuplication() throws Exception{		
		return "mypage/joinStep03";
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
}
