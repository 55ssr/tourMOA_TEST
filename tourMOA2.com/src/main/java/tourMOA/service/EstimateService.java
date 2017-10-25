package tourMOA.service;

import java.util.List;

public interface EstimateService {	
	String insertEstimateReq(EstimateVO vo) throws Exception;
	List<?> selectAdEstimateList(DefaultListVO searchVO) throws Exception;
	EstimateVO adminEstimateDetail(EstimateVO vo) throws Exception;
	int adminEstimateDetailUpdate(EstimateVO vo) throws Exception;
	int adminEstimateTotal(DefaultListVO searchVO) throws Exception;
}