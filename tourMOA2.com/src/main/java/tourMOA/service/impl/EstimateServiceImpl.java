package tourMOA.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.EstimateService;

@Service("EstimateService")
public class EstimateServiceImpl extends EgovAbstractServiceImpl implements EstimateService {

	@Resource(name = "estimateDAO")
	private EstimateDAO estimateDAO;
}
