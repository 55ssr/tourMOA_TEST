package tourMOA.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tourMOA.service.CategoryService;
import tourMOA.service.CategoryVO;
import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsService;
import tourMOA.service.GoodsVO;

@Controller
public class AdminController {
	
	/** categoryService */
	/* categoryService 서비스를 사용하기 위해 선언함
	 * impl에서의 이름과 동일*/
	@Resource(name = "categoryService")
	private CategoryService categoryService;
	
	@Resource(name="goodsService")
	private GoodsService goodsService;
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin/admin";
	}
	
	@RequestMapping("/adminComDetail.do")
	public String adminComInfo() {
		return "admin/ComDetail/adminComDetail";
	}
	
	@RequestMapping("/adminResearchList.do")
	public String adminResearchList() {
		return "admin/Research/adminResearchList";
	}
	
	@RequestMapping("/adminResearchWrite.do")
	public String adminResearchWrite() {
		return "admin/Research/adminResearchWrite";
	}
	
	@RequestMapping("/adminResearchDetail.do")
	public String adminResearchDetail() {
		return "admin/Research/adminResearchDetail";
	}
	
	
	@RequestMapping("/adminSearch.do")
	public String adminSearch() {
		return "admin/Search/adminSearch";
	}
	
	@RequestMapping("/adminAutoComplete.do")
	public String adminAutoComplete() {
		return "admin/AutoComplete/adminAutoComplete";
	}
	
	@RequestMapping("/adminGoodsList.do")
	public String adminGoodsList(DefaultListVO vo, Model model) throws Exception{
		List<?> list = goodsService.selectGoodsList(vo);
		model.addAttribute("resultList", list);
		return "admin/Goods/adminGoodsList";
	}
	
	@RequestMapping("/adminGoodsWrite.do")
	public String adminGoodsWrite() {
		return "admin/Goods/adminGoodsWrite";
	}
	
	@RequestMapping("/adminGoodsWriteSave.do")
	@ResponseBody public Map<String, Object> insertGoods(GoodsVO vo) throws Exception {
		String result = "";
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("vo ======================== " + vo.getTitle());
		result = goodsService.insertGoods(vo);
		if(result == null) result = "ok";
		map.put("result", result);
		
		return map;
	}
	
	@RequestMapping("/adminGoodsDetail.do")
	public String adminGoodsDetail() {
		return "admin/Goods/adminGoodsDetail";
	}
	
	@RequestMapping("/adminGoodsCommList.do")
	public String adminGoodsCommList() {
		return "admin/GoodsComm/adminGoodsCommList";
	}
	
	@RequestMapping("/adminGoodsCommWrite.do")
	public String adminGoodsCommWrite() {
		return "admin/GoodsComm/adminGoodsCommWrite";
	}
	
	@RequestMapping("/adminGoodsCommDetail.do")
	public String adminGoodsCommDetail() {
		return "admin/GoodsComm/adminGoodsCommDetail";
	}
	
	@RequestMapping("/adminMemberList.do")
	public String adminMemberList() {
		return "admin/Member/adminMemberList";
	}
	
	@RequestMapping("/adminMemberWrite.do")
	public String adminMemberWrite() {
		return "admin/Member/adminMemberWrite";
	}
	
	@RequestMapping("/adminMemberDetail.do")
	public String adminMemberDetail() {
		return "admin/Member/adminMemberDetail";
	}
	
	@RequestMapping("/adminGroupList.do")
	public String adminGroupList() {
		return "admin/Group/adminGroupList";
	}
	
	@RequestMapping("/adminPayList.do")
	public String adminPayList() {
		return "admin/Pay/adminPayList";
	}
		
	@RequestMapping("/adminAllBoardList.do")
	public String adminAllBoardList() {
		return "admin/AllBoard/adminAllBoardList";
	}
	
	@RequestMapping("/adminEstimateList.do")
	public String adminEstimateList() {
		return "admin/Estimate/adminEstimateList";
	}
	
	@RequestMapping("/adminEstimateDetail.do")
	public String adminEstimateDetail() {
		return "admin/Estimate/adminEstimateDetail";
	}
	
	/*카테고리 리스트 VIEW*/
	@RequestMapping("/adminCategoryList.do")
	public String selectCategoryList(DefaultListVO vo, Model model) throws Exception {
		
		System.out.println("test");
		if(	vo.getSrchContn() == null 
			|| vo.getSrchContn().equals("")
			|| vo.getSrchKeywd() == null 
			|| vo.getSrchKeywd().equals("") ) {
			
			vo.setSrchContn("hctgcd");
			vo.setSrchKeywd("0");
		}

		List<?> list = categoryService.selectCategoryList(vo);

		model.addAttribute("srchContn",vo.getSrchContn());
		model.addAttribute("srchKeywd",vo.getSrchKeywd());
		model.addAttribute("rslist", list);
			
		return "admin/Category/adminCategoryList";
	}
	
	/*카테고리 등록 VIEW*/
	@RequestMapping("/adminCategoryWrite.do")
	@ResponseBody public Map<String, String> insertCtg( CategoryVO vo) 
            throws Exception {
		
		String result="";
		int cnt = 0;
		Map<String, String> map = new HashMap<String, String>();
		
		result = categoryService.insertCategory(vo);
		if(result == null) {
			result = "ok";
		}
		map.put("result", result);
		return map;
	}	
	
	/*카테고리 수정 VIEW*/
	@RequestMapping("/adminCategoryMod.do")
	public String adminCategoryMod() {
		return "admin/Category/adminCategoryMod";
	}
	
	
}

