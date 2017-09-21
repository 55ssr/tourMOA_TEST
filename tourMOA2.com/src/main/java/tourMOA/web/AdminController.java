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
	
	@RequestMapping("/adminGoodsList.do")
	public String adminGoodsList() {
		return "admin/adminGoodsList";
	}
	
	@RequestMapping("/adminGoodsWrite.do")
	public String adminGoodsWrite() {
		return "admin/adminGoodsWrite";
	}
	
	@RequestMapping("/adminGoodsDetail.do")
	public String adminGoodsDetail() {
		return "admin/adminGoodsDetail";
	}
	
	@RequestMapping("/adminGoodsCommList.do")
	public String adminGoodsCommList() {
		return "admin/adminGoodsCommList";
	}
	
	@RequestMapping("/adminGoodsCommWrite.do")
	public String adminGoodsCommWrite() {
		return "admin/adminGoodsCommWrite";
	}
	
	@RequestMapping("/adminGoodsCommDetail.do")
	public String adminGoodsCommDetail() {
		return "admin/adminGoodsCommDetail";
	}
	
	@RequestMapping("/adminMemberList.do")
	public String adminMemberList() {
		return "admin/adminMemberList";
	}
	
	@RequestMapping("/adminMemberWrite.do")
	public String adminMemberWrite() {
		return "admin/adminMemberWrite";
	}
	
	@RequestMapping("/adminMemberDetail.do")
	public String adminMemberDetail() {
		return "admin/adminMemberDetail";
	}
	
	@RequestMapping("/adminGroupList.do")
	public String adminGroupList() {
		return "admin/adminGroupList";
	}
	
	@RequestMapping("/adminPayList.do")
	public String adminPayList() {
		return "admin/adminPayList";
	}
		
	@RequestMapping("/adminAllBoardList.do")
	public String adminAllBoardList() {
		return "admin/adminAllBoardList";
	}
	
	@RequestMapping("/adminEstimateList.do")
	public String adminEstimateList() {
		return "admin/adminEstimateList";
	}
	
	@RequestMapping("/adminEstimateDetail.do")
	public String adminEstimateDetail() {
		return "admin/adminEstimateDetail";
	}
}
