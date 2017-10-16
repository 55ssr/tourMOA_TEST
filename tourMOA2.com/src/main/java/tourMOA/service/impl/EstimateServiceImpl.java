package tourMOA.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.EstimateService;
import tourMOA.service.EstimateVO;

@Service("estimateService")
public class EstimateServiceImpl extends EgovAbstractServiceImpl implements EstimateService {

	@Resource(name = "estimateDAO")
	private EstimateDAO estimateDAO;

	@Override
	public String insertEstimateReq(EstimateVO vo) throws Exception {
		return estimateDAO.insertEstimateReq(vo);
	}
}
