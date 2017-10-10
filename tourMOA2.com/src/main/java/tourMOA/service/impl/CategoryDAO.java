package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.CategoryVO;
import tourMOA.service.DefaultListVO;

@Repository("categoryDAO")
public class CategoryDAO extends EgovAbstractDAO {

	public List<?> selectCategoryList(DefaultListVO vo) {
		List<?> list = list("categoryDAO.selectCategoryList",vo);
		return list;
	}

	public String insertCategory(CategoryVO vo) {
		return (String) insert("categoryDAO.insertCategory",vo);
	}	

	public int selectCategoryCdCnt(String cd) {
		return (int) select("categoryDAO.selectCategoryCdCnt",cd);
	}

	public String selectCategoryCdMax(String cd) {		
		return (String) select("categoryDAO.selectCategoryCdMax",cd);
	}

	public CategoryVO selectCategoryDetail(CategoryVO vo) {		
		return (CategoryVO) select("categoryDAO.selectCategoryDetail",vo);
	}

	public int updateCategory(CategoryVO vo) {		
		return update("categoryDAO.updateCategory",vo);
	}

	public int selectCategoryLowLevlCnt(String ctgcd) {
		return (int) select("categoryDAO.selectCategoryLowLevlCnt",ctgcd);
	}

	public int deleteCategory(CategoryVO vo) {
		return delete("categoryDAO.deleteCategory",vo);
	}

	public int selectCategoryTotal(SampleDefaultVO searchVO) {
		return (int) select("categoryDAO.selectCategoryTotal",searchVO);
	}
}