package com.yedam.blog.view.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {

	@RequestMapping("/list.do")
	public String blogList(){
		return "/board/list";
	}
	
}
