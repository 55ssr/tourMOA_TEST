package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsService;
import tourMOA.service.GoodsVO;

@Service("goodsService")
public class GoodsServiceImpl extends EgovAbstractServiceImpl implements GoodsService {

	@Resource(name = "goodsDAO")
	private GoodsDAO goodsDAO;
	
	@Override
	public List<?> selectGoodsList(DefaultListVO vo) throws Exception {
		return goodsDAO.selectGoodsList (vo);
	}

}
