package tourMOA.service;

public interface MemberService {
	
	int selectCustIdDuplication(MemberVO vo) throws Exception;
	
	String insertMemberJoin(MemberVO vo)throws Exception;

	int findId(MemberVO vo) throws Exception;
	
	int findPwRe(MemberVO vo) throws Exception;
	
	boolean loginSession(MemberVO vo) throws Exception;

	MemberVO accountDetail(MemberVO vo) throws Exception;

	int accountDetailUpdate(MemberVO vo) throws Exception;

	MemberVO accountPwReaffirm(MemberVO vo)throws Exception;


}
