package tourMOA.service;

import java.util.List;


public interface NoticeService {
	
	List<?> selectNoticeList(DefaultListVO searchVO) throws Exception;
	String insertNotice(NoticeVO vo) throws Exception;
	int selectNoticeTotal(DefaultListVO searchVO) throws Exception;
	NoticeVO selectNoticeDetail(NoticeVO vo) throws Exception;
}
