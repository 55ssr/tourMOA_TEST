package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;
import tourMOA.service.EstimateVO;

@Repository("estimateDAO")
public class EstimateDAO extends EgovAbstractDAO{

	public String insertEstimateReq(EstimateVO vo) {
		return (String) insert("estimateDAO.insertEstimateReq",vo);
	}

	public List<?> selectAdEstimateList(DefaultListVO searchVO) {
		List<?> list = list("estimateDAO.selectAdEstimateList",searchVO);
		return list;
	}

	public EstimateVO adminEstimateDetail(EstimateVO vo) {
		return (EstimateVO) select("estimateDAO.adminEstimateDetail",vo);
	}

	public int adminEstimateDetailUpdate(EstimateVO vo) {
		return update("estimateDAO.adminEstimateDetailUpdate",vo);
	}

	public int adminEstimateTotal(DefaultListVO searchVO) {
		return (int) select("estimateDAO.adminEstimateTotal",searchVO);
	}
	
}
