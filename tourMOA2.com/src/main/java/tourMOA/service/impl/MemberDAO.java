package tourMOA.service.impl;

import javax.servlet.http.HttpSession;

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

	public boolean loginSession(MemberVO vo, HttpSession session) {
		// TODO Auto-generated method stub
		return (boolean) select("memberDAO.loginSession",vo); 
	}

}
