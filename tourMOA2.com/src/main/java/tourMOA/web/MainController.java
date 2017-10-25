package tourMOA.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tourMOA.service.DefaultListVO;
import tourMOA.service.NoticeService;

@Controller
public class MainController {
	
	@Resource(name = "noticeService")
	private NoticeService noticeService;
	
	@RequestMapping("/main.do")
	public String main(Model model) throws Exception{
		DefaultListVO searchVO = new DefaultListVO();
		searchVO.setLastIndex(3);
		List<?> noticeList = noticeService.selectNoticeList(searchVO);
		
		model.addAttribute("noticeList", noticeList);
		
		return "main/main";		
	}
	
}
