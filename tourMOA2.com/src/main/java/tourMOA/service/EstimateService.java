package tourMOA.service;

import java.util.List;

public interface EstimateService {	
	String insertEstimateReq(EstimateVO vo) throws Exception;
	List<?> selectAdEstimateList(EstimateVO vo) throws Exception;	
}