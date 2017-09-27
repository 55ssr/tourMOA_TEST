package tourMOA.service;

public interface MemberService {
	
	int selectCustIdDuplication(MemberVO vo) throws Exception;
	
	String insertMemberJoin(MemberVO vo)throws Exception;

}
