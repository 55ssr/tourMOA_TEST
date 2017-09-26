package tourMOA.service;

import org.springframework.ui.Model;

public interface MemberService {
	
	public int selectCustIdDuplication(MemberVO vo) throws Exception ;

	MemberVO selectjoinStep03(String name);
	

}
