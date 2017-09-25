package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAO extends EgovAbstractDAO{

	public List<?> selectNoticeList(SampleDefaultVO searchVO) {
		return list("noticeDAO.selectNoticeList",searchVO);
	}

	public String insertNotice(NoticeVO vo) {
		return (String) insert("noticeDAO.insertNotice,vo");
	}
}
