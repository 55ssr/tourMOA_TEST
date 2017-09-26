package tourMOA.service;

import java.util.List;

import egovframework.example.sample.service.SampleDefaultVO;

public interface NoticeService {
	List<?> selectNoticeList(SampleDefaultVO searchVO) throws Exception;
	String insertNotice(NoticeVO vo) throws Exception;
}
