package tourMOA.service;

import java.util.List;

import egovframework.example.sample.service.SampleDefaultVO;

public interface CategoryService {

	List<?> selectCategoryList(DefaultListVO vo) throws Exception;	
	int selectCategoryCdCnt(String cd) throws Exception;
	String selectCategoryCdMax(String cd) throws Exception;
	
	String insertCategory(CategoryVO vo) throws Exception;
	CategoryVO selectCategoryDetail(CategoryVO vo) throws Exception;
	int updateCategory(CategoryVO vo) throws Exception;
	int selectCategoryLowLevlCnt(String ctgcd) throws Exception;
	int deleteCategory(CategoryVO vo) throws Exception;
	int selectCategoryTotal(SampleDefaultVO searchVO) throws Exception;
	
}
