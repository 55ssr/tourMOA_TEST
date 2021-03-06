package tourMOA.web;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tourMOA.service.DefaultListVO;
import tourMOA.service.GoodsService;
import tourMOA.service.GoodsVO;
import tourMOA.service.ManagerVO;
import tourMOA.service.ReservService;
import tourMOA.service.ReservVO;
import tourMOA.service.SliderVO;

@Controller
public class ProductController {
	
	@Resource(name = "goodsService")
	private GoodsService goodsService;
	@Resource(name = "reservService")
	private ReservService reservService;
	
	/*상품 해외패키지페이지*/
	@RequestMapping("product/detail1.do")
	public String detail1() throws Exception{		
		return "product/detail1";		
	}
	
	/*상품 자유여행페이지*/
	@RequestMapping("product/detail2.do")
	public String detail2() throws Exception{		
		return "product/detail2";		
	}
	
	/*기업단체문의*/
	@RequestMapping("product/biztravel.do")
	public String biztravel() throws Exception{		
		return "product/biztravel";		
	}
	
	/*해당상품 지역별 메인페이지*/
	@RequestMapping("product/locMain.do")
	public String locMain() throws Exception{		
		return "product/locMain";		
	}
	
	@RequestMapping("product/locList.do")
	public String locList() throws Exception{
		return "product/locList";
	}

	@RequestMapping("product/unitList.do")
	public String unitList(@RequestParam("code") String code, GoodsVO vo, Model model) throws Exception{
		GregorianCalendar yearList = new GregorianCalendar();
		
		int year =yearList.get(Calendar.YEAR);
		int month =yearList.get(Calendar.MONTH)+1;
		int date = yearList.get(Calendar.DATE);
		int maximumday =yearList.getActualMaximum(Calendar.DAY_OF_MONTH);
		int minimumday = yearList.getActualMinimum(Calendar.DAY_OF_MONTH);
		
		
		
		//달의 첫째 요일 구하기
		int day_of_week = yearList.getActualMinimum(Calendar.DAY_OF_WEEK);
		//String[] dayList = new String[maximumday];
		String weekList[] = new String[maximumday];
		
		
		//배열은 0부터 시작해야하고 minimumday는 1부터 해야하기때문에 -1을하고 i%7이 1일때 일요일이 되야하지만 더해준다
		for(int i = minimumday-1; i <= maximumday-1; i++) {
			System.out.println(i%7);
			
			if(i % 7 == 1) weekList[i]="월";
			if(i % 7 == 2) weekList[i]="화";
			if(i % 7 == 3) weekList[i]="수";
			if(i % 7 == 4) weekList[i]="목";
			if(i % 7 == 5) weekList[i]="금";
			if(i % 7 == 6) weekList[i]="토";
			if(i % 7 == 0) weekList[i]="일";
		}
		
		List<?> unitList = goodsService.selectUnitList(vo);
		
		model.addAttribute("unitList", unitList);
		
		
		vo = goodsService.selectUnitDetail(vo);
		model.addAttribute("vo", vo);
		model.addAttribute("day_of_week", day_of_week);
		model.addAttribute("date", date);
		model.addAttribute("year", year);
		model.addAttribute("month", month);
		model.addAttribute("maximumday", maximumday);
		model.addAttribute("minimumday", minimumday);
		model.addAttribute("weekList", weekList);
		return "product/unitList";
	}
	
	/*상품 예약리스트페이지*/
	@RequestMapping("product/detailList.do")
	public String detailList(@RequestParam("unq") String unq, GoodsVO vo, Model model) throws Exception{
		vo = goodsService.selectUnitDetail(vo);
		model.addAttribute("vo", vo);	
		return "product/detailList";		
	}
	
	/*상품 예약페이지*/
	@RequestMapping("product/detailPackage.do")
	public String detailPackage(@RequestParam("unq") int unq, GoodsVO vo, ManagerVO vo2, SliderVO vo3, Model model) throws Exception{
		vo = goodsService.selectGoodsDetail(vo);
		System.out.println("getNation...." + vo.getNation());
		
		vo2.setCode(vo.getLocation());
		System.out.println(vo2.getCode());
		vo2 = goodsService.selectManagerDetail(vo2);
		
		if (vo.getNation().equals("italy")) {
			System.out.println("////////////////////////////////이탈리아////////////////////////////////");
			//String[] f = files.split("／");
		}
		vo3.setCode(vo.getNation());
		System.out.println("====Con1");
		vo3 = goodsService.selectSliderDetail(vo3);
		
		System.out.println("ddddddd"+vo);
		List<?> optList = goodsService.selectOptionList(vo);
		
		model.addAttribute("vo", vo);
		model.addAttribute("vo2", vo2);
		model.addAttribute("vo3", vo3);
		model.addAttribute("optList", optList);
		
		return "product/detailPackage";		
	}
	/* 예약하기 버튼넘기기*/
	@RequestMapping(value = "product/detailPackagebtn.do")
	@ResponseBody public Map<String, Object> detailPackagebtn(ReservVO vo) throws Exception {
		
		System.out.println("asdf");
		String cnt = "";
		HashMap<String, Object> map = new HashMap<String, Object>();
		System.out.println("asdf");
		cnt = reservService.detailPackagebtn(vo);
		if(cnt==null) cnt="ok";
		System.out.println(cnt);
		map.put("cnt", cnt);
		return map;
	}
	/*상품 예약 Step01*/
	@RequestMapping("product/reserveStep01.do")
	public String reserveStep01(@RequestParam("unq") int unq, GoodsVO vo, Model model) throws Exception{
		vo = goodsService.selectGoodsDetail(vo);
		System.out.println("+fffffff"+vo.getNation());
		System.out.println(vo.getCode());
		model.addAttribute("vo",vo);
		return "product/reserveStep01";
	}
	
	
}