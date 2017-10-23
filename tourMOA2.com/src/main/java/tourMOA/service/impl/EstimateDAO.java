package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.EstimateVO;

@Repository("estimateDAO")
public class EstimateDAO extends EgovAbstractDAO{

	public String insertEstimateReq(EstimateVO vo) {
		return (String) insert("estimateDAO.insertEstimateReq",vo);
	}

	public List<?> selectAdEstimateList(EstimateVO vo) {
		List<?> list = list("estimateDAO.selectAdEstimateList",vo);
		return list;
	}
}
