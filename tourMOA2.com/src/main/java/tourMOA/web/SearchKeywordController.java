package tourMOA.web;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
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
	public String searchKeyword(@ModelAttribute("searchVO") DefaultListVO searchVO
			, Model model) throws Exception{
		System.out.println("controller START");
		int viewCount = searchVO.getViewCount();
		
		int recordCountPerPage = viewCount;
		int firstIndex=1;
		int lastIndex=(firstIndex + recordCountPerPage) - 1;
		GregorianCalendar today = new GregorianCalendar();
		int year = today.get ( Calendar.YEAR );
		int month = today.get(Calendar.MONTH ) + 1;
		
		/*String yearNmonth = year+"년 "+month+"월";*/
		searchVO.setFirstIndex(firstIndex);
		searchVO.setLastIndex(lastIndex);
		
		boolean tfKeyword = false;
		
		String existKeyword = searchVO.getSearchKeyword();
		String existCondition = searchVO.getSearchCondition();
		
		int lowPrice = searchVO.getLowPrice();
		int highPrice = searchVO.getHighPrice();  
		
		String[] date;
		String existDepartDate="";
		
		System.out.println(searchVO.getDepartDate());
		
		if(searchVO.getDepartDate()!=null){
			
			System.out.println("if Start");
			existDepartDate = searchVO.getDepartDate();
			System.out.println(existDepartDate.indexOf(','));
			
			if(existDepartDate.indexOf(',') > -1){
					System.out.println("if START");
					date=existDepartDate.split(",");
					System.out.println("dateArray="+date[0]);
					searchVO.setDepartDate(date[0]);
					System.out.println("if END");
			}
			System.out.println(existDepartDate);
			
			
		}
		
		System.out.println(lowPrice+"===="+highPrice);
		if((existKeyword).equals("") && (existCondition).equals("") && (existDepartDate).equals("")){
			tfKeyword=false;
		}else if (!(existKeyword).equals("") || !(existCondition).equals("") || !(existDepartDate).equals("") ){
			tfKeyword=true;
			
		}
	
		
		if(tfKeyword==true){
			boolean viewOpen = true;
			int goodsCnt = searchService.selectSearchKeywordTotal(searchVO);
			List<?> selectSearchProductList = searchService.selectSearchProductList(searchVO);
			model.addAttribute("goodsCnt", goodsCnt);
			model.addAttribute("viewOpen", viewOpen);
			model.addAttribute("searchKeyword", selectSearchProductList);
			model.addAttribute("existKeyword", existKeyword);
		}else if(tfKeyword==false){
			boolean viewOpen = false;
			model.addAttribute("viewOpen", viewOpen);
		}
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("today", today);
		
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
