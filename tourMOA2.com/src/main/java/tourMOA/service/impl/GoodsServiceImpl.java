package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsService;
import tourMOA.service.GoodsVO;
import tourMOA.service.ManagerVO;
import tourMOA.service.OptionVO;
import tourMOA.service.SliderVO;

@Service("goodsService")
public class GoodsServiceImpl extends EgovAbstractServiceImpl implements GoodsService {

	@Resource(name = "goodsDAO")
	private GoodsDAO goodsDAO;
	
	@Override
	public List<?> selectGoodsList(DefaultListVO vo) throws Exception {
		return goodsDAO.selectGoodsList (vo);
	}

	@Override
	public String insertGoods(GoodsVO vo) throws Exception {
		return goodsDAO.insertGoods(vo);
	}

	@Override
	public int selectGoodsTotal(DefaultListVO searchVO) throws Exception {
		return goodsDAO.selectGoodsTotal(searchVO);
	}

	@Override
	public GoodsVO selectGoodsDetail(GoodsVO vo) throws Exception {
		return goodsDAO.selectGoodsDetail(vo);
	}

	@Override
	public int updateGoods(GoodsVO vo) throws Exception {
		return goodsDAO.updateGoods(vo);
	}

	@Override
	public int deleteGoods(GoodsVO vo) throws Exception {
		return goodsDAO.deleteGoods(vo);
	}

	@Override
	public GoodsVO selectUnitDetail(GoodsVO vo) throws Exception {
		return goodsDAO.selectUnitDetail(vo);
	}

	@Override
	public ManagerVO selectManagerDetail(ManagerVO vo2) throws Exception {
		return goodsDAO.selectManagerDetail(vo2);
	}

	@Override
	public List<?> selectOptionList(GoodsVO vo) throws Exception {
		return goodsDAO.selectOptionList(vo);
	}

	@Override
	public String insertSlider(GoodsVO vo) throws Exception {
		return goodsDAO.insertSlider(vo);
	}

	@Override
	public int selectSliderTotal(DefaultListVO searchVO) throws Exception {
		return goodsDAO.selectSliderTotal(searchVO);
	}

	@Override
	public List<?> selectSliderList(DefaultListVO searchVO) {
		return goodsDAO.selectSliderList(searchVO);
	}

	@Override
	public GoodsVO adminSliderDetail(GoodsVO vo) {
		return goodsDAO.adminSliderDetail(vo);
	}

	@Override
	public int deleteSlider(GoodsVO vo) {
		return goodsDAO.deleteSlider(vo);
	}

	@Override
	public int updateSlider(GoodsVO vo) {
		return goodsDAO.updateSlider(vo);
	}

	@Override
	public SliderVO selectSliderDetail(SliderVO vo3) {
		return goodsDAO.selectSliderDetail(vo3);
	}

	@Override
	public String insertOption(OptionVO vo) throws Exception {
		return goodsDAO.insertOption(vo);
	}

	@Override
	public int selectOptionTotal(DefaultListVO searchVO) {
		return goodsDAO.selectOptionTotal(searchVO);
	}

	@Override
	public List<?> adminOptionList(DefaultListVO searchVO) {
		return goodsDAO.adminOptionList(searchVO);
	}

	@Override
	public int adminSliderConfirm(SliderVO vo) throws Exception {
		return goodsDAO.adminSliderConfirm(vo);
	}

	@Override
	public OptionVO selectOptionDetail(OptionVO vo) throws Exception {
		return goodsDAO.selectOptionDetail(vo);
	}

	@Override
	public int updateOption(GoodsVO vo) {
		return goodsDAO.updateOption(vo);
	}

	@Override
	public int deleteOption(OptionVO vo) {
		return goodsDAO.deleteOption(vo);
	}


}
