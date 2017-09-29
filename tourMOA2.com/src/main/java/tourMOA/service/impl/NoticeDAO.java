package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;
import tourMOA.service.NoticeVO;

@Repository("noticeDAO")
public class NoticeDAO extends EgovAbstractDAO{

	public List<?> selectNoticeList(DefaultListVO searchVO) {
		return list("selectNoticeList",searchVO);
	}

	public String insertNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return (String) insert("insertNotice",vo);
	}

	public int selectNoticeTotal(DefaultListVO searchVO) {
		// TODO Auto-generated method stub
		return (int) select("selectNoticeTotal",searchVO);
	}

}
