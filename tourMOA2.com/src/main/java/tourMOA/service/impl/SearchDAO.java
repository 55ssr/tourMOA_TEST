package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;

@Repository("searchDAO")
public class SearchDAO extends EgovAbstractDAO{

	public List<?> selectSearchProductList(DefaultListVO searchVO) {
		// TODO Auto-generated method stub
		return list("searchDAO.selectSearchProductList",searchVO);
	}

	public int selectSearchKeywordTotal(DefaultListVO searchVO) {
		// TODO Auto-generated method stub
		return (int) select("searchDAO.selectSearchKeywordTotal",searchVO);
	}
}
