package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.DefaultListVO;
import tourMOA.service.SearchService;

@Service("searchService")
public class SearchServiceImpl extends EgovAbstractServiceImpl implements SearchService {
	@Resource(name = "searchDAO")
	private SearchDAO searchDAO;
	@Override
	public List<?> selectSearchProductList(DefaultListVO searchVO) throws Exception {
		return searchDAO.selectSearchProductList(searchVO);
	}
	@Override
	public int selectSearchKeywordTotal(DefaultListVO searchVO) throws Exception {
		// TODO Auto-generated method stub
		return searchDAO.selectSearchKeywordTotal(searchVO);
	}

}
