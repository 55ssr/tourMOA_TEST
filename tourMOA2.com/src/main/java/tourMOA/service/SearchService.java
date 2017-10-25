package tourMOA.service;

import java.util.List;

public interface SearchService {
	List<?> selectSearchProductList(DefaultListVO searchVO)throws Exception;
	int selectSearchKeywordTotal(DefaultListVO searchVO) throws Exception;
}
