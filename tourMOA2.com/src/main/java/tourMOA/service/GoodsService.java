package tourMOA.service;

import java.util.List;

import tourMOA.service.CommVO;

public interface GoodsService {

	List<?> selectGoodsList (DefaultListVO vo) throws Exception;
	List<?> selectUnitList (GoodsVO vo) throws Exception;
	String insertGoods(GoodsVO vo) throws Exception;
	int selectGoodsTotal(DefaultListVO searchVO) throws Exception;
	GoodsVO selectGoodsDetail(GoodsVO vo) throws Exception;
	int updateGoods(GoodsVO vo) throws Exception;
	int deleteGoods(GoodsVO vo) throws Exception;
	GoodsVO selectUnitDetail(GoodsVO vo) throws Exception;
	ManagerVO selectManagerDetail(ManagerVO vo2) throws Exception;
	List<?> selectOptionList(GoodsVO vo) throws Exception;
	String insertSlider(GoodsVO vo) throws Exception;
	int selectSliderTotal(DefaultListVO searchVO) throws Exception;
	List<?> selectSliderList(DefaultListVO searchVO);
	GoodsVO adminSliderDetail(GoodsVO vo);
	int deleteSlider(GoodsVO vo);
	int updateSlider(GoodsVO vo);
	SliderVO selectSliderDetail(SliderVO vo3);
	String insertOption(OptionVO vo) throws Exception;
	int selectOptionTotal(DefaultListVO searchVO);
	List<?> adminOptionList(DefaultListVO searchVO);
	int adminSliderConfirm(SliderVO vo) throws Exception;
	OptionVO selectOptionDetail(OptionVO vo) throws Exception;
	int updateOption(GoodsVO vo);
	int deleteOption(OptionVO vo);
	String insertComm(CommVO vo) throws Exception;
	List<?> selectCommList(DefaultListVO searchVO) throws Exception;
	int selectCommTotal(DefaultListVO searchVO) throws Exception;
	CommVO selectCommDetail(CommVO vo) throws Exception;
	List<?> selectGoodsSearchList(DefaultListVO searchVO) throws Exception;
}
