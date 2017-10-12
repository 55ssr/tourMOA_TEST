package tourMOA.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
	public String insertMemberJoin(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.insertMemberJoin(vo); 
	}

	@Override
	public int findId(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.findId(vo);
	}

	@Override
	public int findPwRe(MemberVO vo) throws Exception {
		// TODO Auto-generated method stub
		return memberDAO.findPwRe(vo);
	}

	@Override
	public boolean loginSession(MemberVO vo) throws Exception {
		return memberDAO.loginSession(vo);
	}

	@Override
	public MemberVO accountDetail(MemberVO vo) throws Exception {
		return memberDAO.accountDetail(vo);
	}

	@Override
	public int accountDetailUpdate(MemberVO vo) throws Exception {
		System.out.println("-----IMPL");
		return memberDAO.accountDetailUpdate(vo);
	}

	@Override
	public MemberVO accountPwReaffirm(MemberVO vo) throws Exception {
		return memberDAO.accountPwReaffirm(vo);
	}

	@Override
	public MemberVO accountPwUpdate(MemberVO vo) throws Exception {
		return memberDAO.accountPwUpdate(vo);
	}

	@Override
	public int accountPwUpdateProc(MemberVO vo) throws Exception {
		return memberDAO.accountPwUpdateProc(vo);
	}

	@Override
	public MemberVO findId1(MemberVO vo) throws Exception {
		return memberDAO.findId1(vo);
	}


}
