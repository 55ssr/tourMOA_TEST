package tourMOA.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import tourMOA.service.CategoryVO;
import tourMOA.service.DefaultListVO;

@Repository("categoryDAO")
public class CategoryDAO extends EgovAbstractDAO {

	public List<?> selectCategoryList(DefaultListVO vo) {
		List<?> list = list("categoryDAO.selectCategoryList",vo);
		return list;
	}

	public String insertCategory(CategoryVO vo) {
		return (String) insert("categoryDAO.insertCategory",vo);
	}
}