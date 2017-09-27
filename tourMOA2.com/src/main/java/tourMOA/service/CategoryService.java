package tourMOA.service;

import java.util.List;

public interface CategoryService {

	List<?> selectCategoryList(DefaultListVO vo) throws Exception;	
	int selectCategoryCdCnt(String cd) throws Exception;
	String selectCategoryCdMax(String cd) throws Exception;
	
	String insertCategory(CategoryVO vo) throws Exception;
	CategoryVO selectCategoryDetail(CategoryVO vo) throws Exception;
}
