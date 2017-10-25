package tourMOA.service;

import java.util.List;

import egovframework.example.sample.service.SampleDefaultVO;

public interface MemberService {
	
	int selectCustIdDuplication(MemberVO vo) throws Exception;
	
	String insertMemberJoin(MemberVO vo)throws Exception;

	int findId(MemberVO vo) throws Exception;
	
	int findPwRe(MemberVO vo) throws Exception;
	
	boolean loginSession(MemberVO vo) throws Exception;

	MemberVO accountDetail(MemberVO vo) throws Exception;

	int accountDetailUpdate(MemberVO vo) throws Exception;

	int accountPwReaffirm(MemberVO vo)throws Exception;

	MemberVO accountPwUpdate(MemberVO vo)throws Exception;

	int accountPwUpdateProc(MemberVO vo) throws Exception;

	MemberVO findIdDetail(MemberVO vo) throws Exception;

	MemberVO accountPw(MemberVO vo) throws Exception;

	int adminMemberTotal(SampleDefaultVO searchVO) throws Exception;

	List<?> adminMemberList(SampleDefaultVO searchVO) throws Exception ;

	String insertAdminJoin(MemberVO vo) throws Exception ;

	int adminMemberDelete(MemberVO vo) throws Exception ;

	int adminDetailUpdate(MemberVO vo) throws Exception;



}
