package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.DefaultListVO;

@Repository("reservDAO")
public class ReservDAO extends EgovAbstractDAO{

	public int adminPayTotal(DefaultListVO searchVO) {
		return (int)select("reservDAO.adminPayTotal",searchVO);
	}

	public List<?> adminPayList(DefaultListVO searchVO) {
		return list("reservDAO.adminPayList",searchVO);
	}
}
