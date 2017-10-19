package tourMOA.service;

import java.util.List;

import egovframework.example.sample.service.SampleDefaultVO;

public interface ReservService {

	List<?> adminPayList(DefaultListVO searchVO) throws Exception;

	int adminPayTotal(DefaultListVO searchVO) throws Exception;

}
