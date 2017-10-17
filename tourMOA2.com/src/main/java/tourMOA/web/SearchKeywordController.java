package tourMOA.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.json.MappingJackson2JsonView;

import tourMOA.service.DefaultListVO;
import tourMOA.service.SearchService;

@Controller
public class SearchKeywordController {
	/** MappingJackson2JsonView */
	@Resource(name = "jsonView")
	protected MappingJackson2JsonView jsonView;
	
	@Resource(name ="searchService")
	private SearchService searchService;
	
	/*키워드 검색부분*/
	@RequestMapping("search/searchKeyword.do")
	public String searchKeyword(@ModelAttribute("searchVO") DefaultListVO searchVO, Model model) throws Exception{

		
		
		
		
		int recordCountPerPage = 10;
		int pageSize = 5;
		int totalCount = searchService.selectSearchKeywordTotal(searchVO);
		int pageIndex = searchVO.getPageIndex(); // 사용자가 누른 페이지 값을 가져와야한다.

		int firstPage = ((int) Math.floor((pageIndex - 1) / pageSize) * pageSize) + 1;
		int lastPage = (firstPage + pageSize) - 1;

		// 사용자가 1Page를 누른경우 1 , 2Pages 를 누른경우 11, 3Pages를 누른경우 31
		// 5. 화면 출력할 행(데이터)의 시작 번호
		int firstIndex = (pageIndex - 1) * 10 + 1;
		// firstIndex가 1이면 10, 11이면 20, 21이면 30
		// 5. 끝번호 (데이터베이스) recordCountPerPage 데이터 갯수
		int lastIndex = (firstIndex + recordCountPerPage) - 1;

		// 6. 총 페이지 개수
		int totalPage = (int) Math.ceil((double) totalCount / recordCountPerPage);
		// 7. [이전] / [다음] 처리할 변수 지정
		int before = 0; // 링크 없음
		if (firstPage > 1)
			before = 1;
		int next = 0; // 링크 없음
		if (lastPage <= totalPage)
			next = 1;

		// 8. 행번호
		searchVO.setFirstIndex(firstIndex);
		searchVO.setLastIndex(lastIndex); // 계산한값을 VO에 태워 새로 셋팅을 해준다.

		int total = searchService.selectSearchKeywordTotal(searchVO);

		// 사용자가 1Page를 보고있으면 total 값, 2Pages를 보고있으면 total-10, 3Pages는 total-20
		int topNumber = total - (pageIndex - 1) * 10;

		// lastPage는 화면에 뿌려야 한다 그러므로 model 사용
		String existKeyword = searchVO.getSearchKeyword();
		String existCondition = searchVO.getSearchCondition();
		if(existKeyword!=null || existCondition!=null){
			int viewOpen = 1;
			model.addAttribute("viewOpen", viewOpen);
			model.addAttribute("existKeyword", existKeyword);
			model.addAttribute("existCondition", existCondition);
			
		}
		
		List<?> selectSearchProductList = searchService.selectSearchProductList(searchVO);

		model.addAttribute("recordCountPerPage", recordCountPerPage);
		model.addAttribute("totalCount", totalCount);
		model.addAttribute("firstPage", firstPage);
		model.addAttribute("lastPage", lastPage);
		

		model.addAttribute("totalPage", totalPage);
		model.addAttribute("before", before);
		model.addAttribute("next", next);

		model.addAttribute("searchKeyword", selectSearchProductList);
		model.addAttribute("number", topNumber);
		return "search/searchKeyword";
	}
	
	/*기간별 검색부분*/
	@RequestMapping("search/searchDate.do")
	public String searchDate() throws Exception{		
		return "search/searchDate";
	}
	
	/*가격대별 검색부분*/
	@RequestMapping("search/searchPrice.do")
	public String searchPrice() throws Exception{		
		return "search/searchPrice";
	}
}
