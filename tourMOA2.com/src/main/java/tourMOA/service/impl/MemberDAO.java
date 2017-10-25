package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.MemberVO;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractDAO{

	public int selectCustIdDuplication(MemberVO vo) {
		return (int) select("memberDAO.selectCustIdDuplication",vo);
	}

	public String insertMemberJoin(MemberVO vo) {
		// TODO Auto-generated method stub
		return (String) insert("memberDAO.insertMemberJoin",vo);
	}

	public int findId(MemberVO vo) {
		// TODO Auto-generated method stub
		return (int) select("memberDAO.findId",vo);
	}

	public int findPwRe(MemberVO vo) {
		// TODO Auto-generated method stub
		return (int) select("memberDAO.findPwRe",vo);
	}

	public boolean loginSession(MemberVO vo) {
		// TODO Auto-generated method stub
		return (boolean) select("memberDAO.loginSession",vo); 
	}

	public MemberVO accountDetail(MemberVO vo) {
		return (MemberVO) select("memberDAO.accountDetail",vo);
	}

	public int accountDetailUpdate(MemberVO vo) {
		int chk = update("memberDAO.accountDetailUpdate",vo);
		return chk;
	}

	public int accountPwReaffirm(MemberVO vo) {
		return (int) select("memberDAO.accountPwReaffirm",vo);
	}

	public MemberVO accountPwUpdate(MemberVO vo) {
		return (MemberVO) select("memberDAO.accountPwUpdate",vo);
	}

	public int accountPwUpdateProc(MemberVO vo) {
		int ch = update("memberDAO.accountPwUpdateProc",vo);
		return ch;
	}

	public MemberVO findIdDetail(MemberVO vo) {
		return (MemberVO) select("memberDAO.findIdDetail",vo);
	}

	public MemberVO accountPw(MemberVO vo) {
		return (MemberVO) select("memberDAO.accountPw",vo);
	}

	public int adminMemberTotal(SampleDefaultVO searchVO) {
		return (int) select("memberDAO.adminMemberTotal",searchVO);
	}

	public List<?> adminMemberList(SampleDefaultVO searchVO) {
		return list("memberDAO.adminMemberList",searchVO);
	}

	public String insertAdminJoin(MemberVO vo) {
		return (String) insert("memberDAO.insertAdminJoin",vo);
	}

	public int adminMemberDelete(MemberVO vo) {
		return delete("memberDAO.adminMemberDelete",vo);
	}

	public int adminDetailUpdate(MemberVO vo) {
		return update("memberDAO.adminDetailUpdate",vo);
	}


}
