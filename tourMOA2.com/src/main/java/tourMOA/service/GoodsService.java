package tourMOA.service;

import java.util.List;

public interface GoodsService {

	List<?> selectGoodsList (DefaultListVO vo) throws Exception;
	String insertGoods(GoodsVO vo) throws Exception;
	int selectGoodsTotal(DefaultListVO searchVO) throws Exception;
	GoodsVO selectGoodsDetail(GoodsVO vo) throws Exception;
	int updateGoods(GoodsVO vo) throws Exception;
	int deleteGoods(GoodsVO vo) throws Exception;
	GoodsVO selectUnitDetail(GoodsVO vo) throws Exception;
	List<?> selectDetailImages(GoodsVO vo) throws Exception;
	ManagerVO selectManagerDetail(ManagerVO vo2) throws Exception;
	
}
