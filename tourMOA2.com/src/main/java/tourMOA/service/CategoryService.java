package tourMOA.service;

import java.util.List;

public interface CategoryService {

	List<?> selectCategoryList(DefaultListVO vo) throws Exception;
	String insertCategory(CategoryVO vo) throws Exception;
}
