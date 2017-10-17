package tourMOA.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.EstimateVO;

@Repository("estimateDAO")
public class EstimateDAO extends EgovAbstractDAO{

	public String insertEstimateReq(EstimateVO vo) {
		return (String) insert("estimateDAO.insertEstimateReq",vo);
	}
}
