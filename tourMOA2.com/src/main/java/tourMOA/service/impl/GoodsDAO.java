package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsVO;


@Repository("goodsDAO")
public class GoodsDAO extends EgovAbstractDAO{

	public List<?> selectGoodsList(DefaultListVO vo) {
		return list("goodsDAO.selectGoodsList", vo);
	}

	public String insertGoods(GoodsVO vo) {
		return (String) insert("goodsDAO.insertGoods", vo);
	}

	public int selectGoodsTotal(DefaultListVO searchVO) {
		return (int) select("goodsDAO.selectGoodsTotal", searchVO);
	}

	public GoodsVO selectGoodsDetail(GoodsVO vo) {
		return (GoodsVO) select("goodsDAO.selectGoodsDetail", vo);
	}

	public int updateGoods(GoodsVO vo) {
		return update("goodsDAO.updateGoods", vo);
	}

	public int deleteGoods(GoodsVO vo) {
		return delete("goodsDAO.deleteGoods", vo);
	}

}
