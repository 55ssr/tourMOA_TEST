package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.NoticeService;
import tourMOA.service.NoticeVO;
@Service("noticeService")
public class NoticeServiceImpl extends EgovAbstractServiceImpl implements NoticeService{

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;
	
	@Override
	public List<?> selectNoticeList(SampleDefaultVO searchVO) throws Exception {		
		return noticeDAO.selectNoticeList(searchVO);
	}

	@Override
	public String insertNotice(NoticeVO vo) throws Exception {
		return noticeDAO.insertNotice(vo);
	}	
}
