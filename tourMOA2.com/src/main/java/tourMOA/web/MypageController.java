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
}
