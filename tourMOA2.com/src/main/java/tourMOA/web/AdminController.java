package tourMOA.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.sample.service.SampleDefaultVO;
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
	public String adminGoodsList(@ModelAttribute("searchVO") DefaultListVO searchVO, Model model) throws Exception {
		
		/*1. 한 화면에 출력 할 행 갯수, 한 화면에 출력할 페이지 갯수 */
		int recordCountPerPage = 10;
		int pageSize = 5;
		
		/*2.총 데이터 갯수*/
		int totalCount = goodsService.selectGoodsTotal(searchVO);
		
		/*3. 화면 출력 할 페이지 번호*/
		int pageIndex = searchVO.getPageIndex();
		
		/*4. 화면 출력할 페이징의 시작 번호, 끝 번호*/
		int firstPage = ((int) Math.floor((pageIndex-1)/pageSize)*pageSize) + 1;
		int lastPage = firstPage + pageSize - 1;
		
		/*5. 화면 출력할 행(데이터)의 시작 번호, 끝 번호*/
		int firstIndex = (pageIndex-1) * 10 + 1;
		int lastIndex = firstIndex + (recordCountPerPage - 1);
		
		/*6. 총 페이지 갯수*/
		int totalPage = (int) Math.ceil((double) totalCount / recordCountPerPage);
		
		/*7. [이전] / [다음] 처리 할 변수 지정*/
		int before = 0; // 링크 없음
		if (firstPage > 1) before = 1;
		
		int next = 0; // 링크 없음
		if (lastPage < totalPage) next = 1;
		/*8. 행번호*/
		int number  = totalCount - ((pageIndex-1) * recordCountPerPage);
		
		searchVO.setFirstIndex(firstIndex);
		searchVO.setLastIndex(lastIndex);
						
		List<?> goodsList = goodsService.selectGoodsList(searchVO);
				
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("firstPage", firstPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("before", before);
		model.addAttribute("next", next);
		model.addAttribute("number", number);
		
		model.addAttribute("resultList", goodsList);
		
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
		System.out.println("vo ========================!!!!! " + vo.getTitle());
		System.out.println("price ======================== " + vo.getPrice());
		System.out.println("ch ======================== " + vo.getPricech());
		System.out.println("in ======================== " + vo.getPricein());
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
	public String selectCategoryList(@ModelAttribute("searchVO")SampleDefaultVO searchVO, DefaultListVO vo, Model model) throws Exception {		
		int recordCountPerPage = 10;
 		int pageSize = 5;
 	
 		int totalCount = categoryService.selectCategoryTotal(searchVO);
 	
 		int pageIndex = searchVO.getPageIndex();
 	
 		int firstPage = ((int) Math.floor((pageIndex-1)/pageSize)*pageSize)+1;	 		
 		int lastPage = (firstPage + pageSize)-1;
 	
 		int firstIndex = (pageIndex-1) * recordCountPerPage + 1;
 		int lastIndex = (firstIndex + recordCountPerPage) - 1;
 	
 		int totalPage = (int) Math.ceil((double)totalCount/recordCountPerPage);
 	
 		int before = 0;
 		if(firstPage > 1) before = 1;
 		int next = 0;
 		if(lastPage <= totalPage) next = 1;
	
	
 		int number = totalCount - ((pageIndex-1)*recordCountPerPage);		
		
		searchVO.setFirstIndex(firstIndex);
		searchVO.setLastIndex(lastIndex);
		
		
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
		
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("firstPage",firstPage);
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("totalPage",totalPage); 
		model.addAttribute("before",before);
		model.addAttribute("next",next);
		model.addAttribute("number",number);
			
		return "admin/Category/adminCategoryList";
	}
	
	/*카테고리 등록 VIEW*/
	@RequestMapping("/adminCategoryWrite.do")
	public String adminCategoryWrite (DefaultListVO vo,Model model) throws Exception {
		
		System.out.println("test");
		/*
		 * 변수설명 : 등록하려는 분류(카테고리)의 상위 코드 값
		 * 아래와 같은 경우의 값이 올 수 있음
		 * ex1) 올바른 경우 : 0(대분류등록) , A01(중분류등록), A0101(소분류등록)
		 * ex2) 올바르지 않은 경우 : NULL, A1, A101, 그외 기타 
		 */
		String hctgcd = vo.getSrchKeywd();
		
		int cnt = 0;
		String maxcd = "";
		String ctgcd = "";
		
		System.out.println("====== hctgcd : " + hctgcd);
		
		/*
		 * 설명 : hctgcd(상위 레벨 코드) 값 완성
		 */
		if(!hctgcd.equals("0")) {
			cnt = categoryService.selectCategoryCdCnt(hctgcd);
			
			// 존재하지 않은 값이 들어왔을 경우 대분류 등록으로 인식 시킴
			// 즉 정상코드 값이 아닌 다른 ( ex:001,ABC 등등 ) 값이 왔을 경우임
			if(cnt <= 0) hctgcd = "0";
		} 
		
		/*
		 * 등록하려는 데이터 코드와 같은 항렬의 max값 가져옴
		 * 예) 0(같은 항렬이 없는 경우), A01 , A0101, A010101
		 */
		maxcd = categoryService.selectCategoryCdMax(hctgcd);
		System.out.println("====== maxCd : " + maxcd);
		
		// 같은 항렬이 없는 경우 0을 가져옴
		if(maxcd.equals("0")) {
			
			if(hctgcd.equals("0")) ctgcd = "A01";
			else ctgcd = hctgcd + "01";
		
		} else {
				// 같은 항렬이 있는 경우 max 값을 가져옴
				String cd1 = maxcd.substring(0,1);   // A
				String cd2 = maxcd.substring(1,maxcd.length()); // 0102
				
				// 03(x), 3(0) ,0103(x), 103(o)
				int mycd = Integer.parseInt(cd2) + 1; 
				
				System.out.println("====== cd2_1 : " + mycd);
				
				int cd2_1Len = Integer.toString(mycd).length();
				if(cd2_1Len%2 == 1) ctgcd = cd1 +"0"+ mycd;
				else ctgcd = cd1 + mycd;
		}

		
		System.out.println("====== ctgcd : " + ctgcd);
		
		model.addAttribute("hctgcd", hctgcd);
		model.addAttribute("ctgcd", ctgcd);
		
		return "admin/Category/adminCategoryWrite";
	}
	/*카테고리 저장 부문*/
	@RequestMapping("/categorySave.do")
	@ResponseBody public Map<String, String> insertCtg(CategoryVO vo) throws Exception {
		
		
		String result="";
		
		Map<String, String> map = new HashMap<String, String>();		
		
		System.out.println("===1" + vo.getCtgcd());
		//System.out.println("===2" + hctgcd);
		
		result = categoryService.insertCategory(vo);
		
		System.out.println("==============="+result);
		
		if(result == null) {
			result = "ok";
		}
		map.put("result", result);
		return map;
	}	
	
	/*카테고리 수정 VIEW*/
	@RequestMapping("/adminCategoryMod.do")
	public String ctgModWrite(CategoryVO vo,Model model) throws Exception {
		
		int cnt = categoryService.selectCategoryCdCnt(vo.getCtgcd());
		
		if(cnt > 0) {
			vo = categoryService.selectCategoryDetail(vo);
		}
		
		model.addAttribute("ctgVo", vo);
		
		return "admin/Category/adminCategoryMod";
	}
	
	/*카테고리 수정 Event*/
	@RequestMapping("/admincategoryUpd.do")
	@ResponseBody public Map<String, String> updateCategory(CategoryVO vo) throws Exception {
		System.out.println("test");
		String result="";
		int cnt = 0;
		
		System.out.println();
		
		Map<String, String> map = new HashMap<String, String>();
		
		cnt = categoryService.updateCategory(vo);
		
		if(cnt > 0) {
			result = "ok";
		}
		map.put("result", result);
		return map;
	}
	
	/*카테고리 삭제 Event*/
	@RequestMapping("/admincategoryDel.do")
	@ResponseBody public Map<String, String> deleteCategory( CategoryVO vo) 
            throws Exception {
		
		String result="";
		int cnt = 0;
		Map<String, String> map = new HashMap<String, String>();
		
		cnt = categoryService.selectCategoryLowLevlCnt(vo.getCtgcd());
		if(cnt > 0) {
			result = "low";
		} else {
			cnt = categoryService.deleteCategory(vo);
			if(cnt > 0) {
				result = "ok";
			} else {
				result = "re";
			}
		}

		map.put("result", result);
		return map;
	}
}

