package tourMOA.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.MemberService;
import tourMOA.service.MemberVO;

@Service("memberService")
public class MemberServiceImpl extends EgovAbstractServiceImpl implements MemberService {

	@Resource(name = "memberDAO")
	private MemberDAO memberDAO;

	@Override
	public int selectCustIdDuplication(MemberVO vo) {
		return memberDAO.selectCustIdDuplication(vo);
	}

	@Override
	public MemberVO selectjoinStep03(String name) {
		return memberDAO.selectjoinStep03(name);
	}

	
}
