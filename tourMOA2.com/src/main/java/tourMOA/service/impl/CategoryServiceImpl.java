package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.CategoryService;
import tourMOA.service.CategoryVO;
import tourMOA.service.DefaultListVO;

@Service("categoryService")
public class CategoryServiceImpl  extends EgovAbstractServiceImpl implements CategoryService {

	@Resource(name = "categoryDAO")
	private CategoryDAO categoryDAO;
	
	
	@Override
	public List<?> selectCategoryList(DefaultListVO vo) throws Exception {
		List<?> list = categoryDAO.selectCategoryList(vo);
		return list;
	}		
		
	@Override
	public String insertCategory(CategoryVO vo) throws Exception {
		return categoryDAO.insertCategory(vo);
	}	

	@Override
	public int selectCategoryCdCnt(String cd) throws Exception {		
		return categoryDAO.selectCategoryCdCnt(cd);
	}

	@Override
	public String selectCategoryCdMax(String cd) throws Exception {		
		return categoryDAO.selectCategoryCdMax(cd);
	}

	@Override
	public CategoryVO selectCategoryDetail(CategoryVO vo) throws Exception {		
		return categoryDAO.selectCategoryDetail(vo);
	}

	@Override
	public int updateCategory(CategoryVO vo) throws Exception {
		return categoryDAO.updateCategory(vo);
	}

	@Override
	public int selectCategoryLowLevlCnt(String ctgcd) throws Exception {
		return categoryDAO.selectCategoryLowLevlCnt(ctgcd);
	}

	@Override
	public int deleteCategory(CategoryVO vo) throws Exception {
		return categoryDAO.deleteCategory(vo);
	}

	@Override
	public int selectCategoryTotal(SampleDefaultVO searchVO) throws Exception {
		return categoryDAO.selectCategoryTotal(searchVO);
	}	
}
