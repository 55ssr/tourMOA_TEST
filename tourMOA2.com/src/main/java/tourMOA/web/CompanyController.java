package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {
	/*회사소개*/
	@RequestMapping("company/intro.do")
	public String intro() throws Exception{
		return "company/intro";
	}
	
	/*고객만족경영*/
	@RequestMapping("company/svcCharter.do")
	public String svcCharter() throws Exception{
		return "company/svcCharter";
	}
	
	/*윤리경영*/
	@RequestMapping("company/ethicsGuide.do")
	public String ethicsGuide() throws Exception{
		return "company/ethicsGuide";
	}
	
	/*CI소개*/
	@RequestMapping("company/ciGuide.do")
	public String ciGuide() throws Exception{
		return "company/ciGuide";
	}
	
	/*위치안내(서울본사)*/
	@RequestMapping("company/headOffice.do")
	public String headOffice() throws Exception{
		return "company/headOffice";
	}
	
	/*위치안내(부산지사)*/
	@RequestMapping("company/busanOffice.do")
	public String busanOffice() throws Exception{
		return "company/busanOffice";
	}
	
	/*위치안내(대구지사)*/
	@RequestMapping("company/daeguOffice.do")
	public String daeguOffice() throws Exception{
		return "company/daeguOffice";
	}
		
}
