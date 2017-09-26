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

}
