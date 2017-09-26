package tourMOA.service.impl;

import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.MemberVO;

@Repository("memberDAO")
public class MemberDAO extends EgovAbstractDAO{

	public int selectCustIdDuplication(MemberVO vo) {
		return (int) select("memberDAO.selectCustIdDuplication",vo);
	}

	public MemberVO selectjoinStep03(String name) {
		return (MemberVO) select("memberDAO.selectjoinStep03",name);
	}

}
