package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	/*여행자보험*/
	@RequestMapping("common/insu01.do")
	public String insu01() throws Exception{
		return "common/insu01";
	}
	
	/*보상기준*/
	@RequestMapping("common/insu02.do")
	public String insu02() throws Exception{
		return "common/insu02";
	}
	
	/*보험약관*/
	@RequestMapping("common/insu03.do")
	public String insu03() throws Exception{
		return "common/insu03";
	}
	
	/*인터넷회원약관*/
	@RequestMapping("common/internetAgree.do")
	public String internetAgree() throws Exception{
		return "common/internetAgree";
	}
	
	/*개인정보처리방침*/
	@RequestMapping("common/privacy.do")
	public String privacy() throws Exception{
		return "common/privacy";
	}
	
	/*신문광고*/
	@RequestMapping("common/paperCalendar.do")
	public String paperCalendar() throws Exception{
		return "common/paperCalendar";
	}
	
	/*사이트맵*/
	@RequestMapping("common/siteMap.do")
	public String siteMap() throws Exception{
		return "common/siteMap";
	}
	
	/*여행약관*/
	@RequestMapping("common/travelAgree.do")
	public String travelAgree() throws Exception{
		return "common/travelAgree";
	}
}
