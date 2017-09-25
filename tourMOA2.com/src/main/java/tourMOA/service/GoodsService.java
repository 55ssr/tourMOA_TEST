package tourMOA.service;

import java.util.List;

public interface GoodsService {

	List<?> selectGoodsList (DefaultListVO vo) throws Exception;

	String insertGoods(GoodsVO vo) throws Exception;

	
}
