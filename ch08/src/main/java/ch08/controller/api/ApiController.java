package ch08.controller.api;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ch08.vo.GuestbookVo;

@Controller
@RequestMapping("/api")
public class ApiController {
	
	@ResponseBody
	@RequestMapping("/text")
	public String text() {
		return "Text 데이타!";
	}
	
	@ResponseBody
	@RequestMapping("/html")
	public String html() {
		return "<h1>AJAX연습</h1><p>HTML 데이터</p>";
	}
	
	@RequestMapping("/json")
	public GuestbookVo json() {
		GuestbookVo vo = new GuestbookVo();
		return vo;
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/xml") public String xml() { return "html"; }
	 */
}
