package tourMOA.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.SampleDefaultVO;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsVO;
import tourMOA.service.ReservService;
import tourMOA.service.ReservVO;

@Service("reservService")
public class ReservServiceImpl extends EgovAbstractServiceImpl implements ReservService {

	@Resource(name="reservDAO")
	private ReservDAO reservDAO;

	@Override
	public List<?> adminPayList(DefaultListVO searchVO) throws Exception {
		return reservDAO.adminPayList(searchVO);
	}

	@Override
	public int adminPayTotal(DefaultListVO searchVO) throws Exception {
		return reservDAO.adminPayTotal(searchVO);
	}
	
	@Override
	public String detailPackagebtn(ReservVO vo) throws Exception {
		return reservDAO.detailPackagebtn(vo);
	}


	@Override
	public ReservVO reserveList(ReservVO vo) throws Exception {
		return reservDAO.reserveList(vo);
	}

	@Override
	public int reserveListDe(ReservVO vo) throws Exception {
		return reservDAO.reserveListDe(vo);
	}
}
