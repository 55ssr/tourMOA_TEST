package tourMOA.service.impl;

import org.springframework.stereotype.Repository;

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
		System.out.println("-----DAO111");
		int chk = update("memberDAO.accountDetailUpdate",vo);
		System.out.println("chk ============ " + chk);
		return chk;
	}

	public MemberVO accountPwReaffirm(MemberVO vo) {
		return (MemberVO) select("memberDAO.accountPwReaffirm",vo);
	}

}
