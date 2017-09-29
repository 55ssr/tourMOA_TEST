package tourMOA.service;

public interface MemberService {
	
	int selectCustIdDuplication(MemberVO vo) throws Exception;
	
	String insertMemberJoin(MemberVO vo)throws Exception;

	int findId(MemberVO vo) throws Exception;
	
	int findPwRe(MemberVO vo) throws Exception;

}
