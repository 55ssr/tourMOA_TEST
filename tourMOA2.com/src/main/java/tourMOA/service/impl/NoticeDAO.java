package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;
import tourMOA.service.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAO extends EgovAbstractDAO {

	public List<?> selectNoticeList(DefaultListVO searchVO) {
		return list("noticeDAO.selectNoticeList", searchVO);
	}

	public String insertNotice(NoticeVO vo) {
		return (String) insert("noticeDAO.insertNotice", vo);
	}

	public int selectNoticeTotal(DefaultListVO searchVO) {
		return (int) select("noticeDAO.selectNoticeTotal", searchVO);
	}

	public NoticeVO selectNoticeDetail(NoticeVO vo) {
		return (NoticeVO) select("noticeDAO.selectNoticeDetail", vo);
	}
}
