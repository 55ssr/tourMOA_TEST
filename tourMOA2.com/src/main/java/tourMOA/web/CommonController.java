package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonController {
	
	/*여행자보험*/
	@RequestMapping("/insu01.do")
	public String insu01() throws Exception{
		return "common/insu01";
	}
	
	/*보상기준*/
	@RequestMapping("/insu02.do")
	public String insu02() throws Exception{
		return "common/insu02";
	}
	
	/*보험약관*/
	@RequestMapping("/insu03.do")
	public String insu03() throws Exception{
		return "common/insu03";
	}
	
	/*인터넷회원약관*/
	@RequestMapping("/internetAgree.do")
	public String internetAgree() throws Exception{
		return "common/internetAgree";
	}
	
	/*신문광고*/
	@RequestMapping("/paperCalendar.do")
	public String paperCalendar() throws Exception{
		return "common/paperCalendar";
	}
	
	/*사이트맵*/
	@RequestMapping("/siteMap.do")
	public String siteMap() throws Exception{
		return "common/siteMap";
	}
	
	/*여행약관*/
	@RequestMapping("/travelAgree.do")
	public String travelAgree() throws Exception{
		return "common/travelAgree";
	}
}
