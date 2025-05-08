package com.rent.happy;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String home() {
		
		
		return "main";
	}
	
	@RequestMapping(value = "/main")  // �� �̰� �߰�!
	public String goMain() {
		return "main";  // /WEB-INF/views/main.jsp�� ������
	}
	
	
	@RequestMapping(value = "header")
	public String home2() 
	{
		
		return "header";
	}
	
	@RequestMapping(value = "booking2")
	public String bo() {
		
		return "booking2";
	}
	
}
