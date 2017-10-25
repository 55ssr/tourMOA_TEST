package tourMOA.service.impl;

import java.util.List;

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

	@Override
	public List<?> selectAdEstimateList(EstimateVO vo) throws Exception {
		return estimateDAO.selectAdEstimateList(vo);
	}

	@Override
	public EstimateVO adminEstimateDetail(EstimateVO vo) throws Exception {
		return estimateDAO.adminEstimateDetail(vo);
	}

	@Override
	public int adminEstimateDetailUpdate(EstimateVO vo) throws Exception {
		return estimateDAO.adminEstimateDetailUpdate(vo);
	}			
}
