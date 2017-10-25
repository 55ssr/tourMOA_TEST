package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsVO;
import tourMOA.service.ManagerVO;
import tourMOA.service.OptionVO;
import tourMOA.service.SliderVO;
import tourMOA.service.CommVO;


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

	public GoodsVO selectUnitDetail(GoodsVO vo) {
		return (GoodsVO) select("goodsDAO.selectUnitDetail", vo);
	}

	public ManagerVO selectManagerDetail(ManagerVO vo2) {
		return (ManagerVO) select("goodsDAO.selectManagerDetail", vo2);
	}

	public List<?> selectOptionList(GoodsVO vo) {
		return list("goodsDAO.selectOptionList", vo);
	}

	public String insertSlider(GoodsVO vo) {
		return (String) insert("goodsDAO.insertSlider", vo);
	}

	public int selectSliderTotal(DefaultListVO searchVO) {
		return (int) select("goodsDAO.selectSliderTotal", searchVO);
	}

	public List<?> selectSliderList(DefaultListVO searchVO) {
		return list("goodsDAO.selectSliderList", searchVO);
	}

	public GoodsVO adminSliderDetail(GoodsVO vo) {
		return (GoodsVO) select("goodsDAO.adminSliderDetail", vo);
	}

	public int deleteSlider(GoodsVO vo) {
		return delete("goodsDAO.deleteSlider", vo);
	}

	public int updateSlider(GoodsVO vo) {
		return update("goodsDAO.updateSlider", vo);
	}

	public SliderVO selectSliderDetail(SliderVO vo3) {
		System.out.println("====goodsDAO");
		return (SliderVO) select("goodsDAO.selectSliderDetail", vo3);
	}

	public String insertOption(OptionVO vo) {
		return (String) insert("goodsDAO.insertOption", vo);
	}

	public int selectOptionTotal(DefaultListVO searchVO) {
		return (int) select("goodsDAO.selectOptionTotal", searchVO);
	}

	public List<?> adminOptionList(DefaultListVO searchVO) {
		return list("goodsDAO.adminOptionList", searchVO);
	}

	public int adminSliderConfirm(SliderVO vo) {
		return (int) select("goodsDAO.adminSliderConfirm", vo);
	}

	public OptionVO selectOptionDetail(OptionVO vo) {
		return (OptionVO) select("goodsDAO.selectOptionDetail", vo);
	}

	public int updateOption(GoodsVO vo) {
		return update("goodsDAO.updateOption", vo);
	}

	public int deleteOption(OptionVO vo) {
		return delete("goodsDAO.deleteOption", vo);
	}

	public String insertComm(CommVO vo) {
		return (String) insert("goodsDAO.insertComm", vo);
	}

	public List<?> selectCommList(DefaultListVO searchVO) {
		return list("goodsDAO.selectCommList", searchVO);
	}

	public int selectCommTotal(DefaultListVO searchVO) {
		return (int) select("goodsDAO.selectCommTotal", searchVO);
	}

	public CommVO selectCommDetail(CommVO vo) {
		return (CommVO) select("goodsDAO.selectCommDetail", vo);
	}

	public List<?> selectGoodsSearchList(DefaultListVO searchVO) {
		return list("goodsDAO.selectGoodsSearchList", searchVO);
	}


}
