package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.MemberService;
import tourMOA.service.MemberVO;
import tourMOA.service.ReservVO;

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
	public int accountPwReaffirm(MemberVO vo) throws Exception {
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
	public MemberVO findIdDetail(MemberVO vo) throws Exception {
		return memberDAO.findIdDetail(vo);
	}

	@Override
	public MemberVO accountPw(MemberVO vo) throws Exception {
		return memberDAO.accountPw(vo);
	}

	@Override
	public int adminMemberTotal(SampleDefaultVO searchVO) throws Exception {
		return memberDAO.adminMemberTotal(searchVO);
	}

	@Override
	public List<?> adminMemberList(SampleDefaultVO searchVO) throws Exception {
		return memberDAO.adminMemberList(searchVO);
	}

	@Override
	public String insertAdminJoin(MemberVO vo) throws Exception {
		return memberDAO.insertAdminJoin(vo);
	}

	@Override
	public int adminMemberDelete(MemberVO vo) throws Exception {
		return memberDAO.adminMemberDelete(vo);
	}

	@Override
	public int adminDetailUpdate(MemberVO vo) throws Exception {
		return memberDAO.adminDetailUpdate(vo);
	}

}
