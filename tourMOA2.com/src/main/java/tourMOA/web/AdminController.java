package tourMOA.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin/admin";
	}
	
	
	@RequestMapping("/adminResearchList.do")
	public String adminResearchList() {
		return "admin/adminResearchList";
	}
	
	@RequestMapping("/adminResearchWrite.do")
	public String adminResearchWrite() {
		return "admin/adminResearchWrite";
	}
	
	@RequestMapping("/adminResearchDetail.do")
	public String adminResearchDetail() {
		return "admin/adminResearchDetail";
	}
	
	
	@RequestMapping("/adminSearch.do")
	public String adminSearch() {
		return "admin/adminSearch";
	}
	
	@RequestMapping("/adminAutoComplete.do")
	public String adminAutoComplete() {
		return "admin/adminAutoComplete";
	}
	
	@RequestMapping("/adminGoods.do")
	public String adminGoods() {
		return "admin/adminGoods";
	}
	
	@RequestMapping("/adminGoodsComm.do")
	public String adminGoodsComm() {
		return "admin/adminGoodsComm";
	}
	
	@RequestMapping("/adminMember.do")
	public String adminMember() {
		return "admin/adminMember";
	}
	
	@RequestMapping("/adminGroup.do")
	public String adminGroup() {
		return "admin/adminGroup";
	}
	
	@RequestMapping("/adminPay.do")
	public String adminPay() {
		return "admin/adminPay";
	}
	
	@RequestMapping("/adminAllBoard.do")
	public String adminAllBoard() {
		return "admin/adminAllBoard";
	}
}
