package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.DefaultListVO;
import tourMOA.service.NoticeService;
import tourMOA.service.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService{

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;
	
	@Override
	public List<?> selectNoticeList(DefaultListVO searchVO) throws Exception {		
		return noticeDAO.selectNoticeList(searchVO);
	}

	@Override
	public String insertNotice(NoticeVO vo) throws Exception {
		return noticeDAO.insertNotice(vo);
	}

	@Override
	public int selectNoticeTotal(DefaultListVO searchVO) throws Exception {
		return noticeDAO.selectNoticeTotal(searchVO);
	}
	
	@Override
	public NoticeVO selectNoticeDetail(NoticeVO vo) throws Exception {
		return noticeDAO.selectNoticeDetail(vo);
	}

}
