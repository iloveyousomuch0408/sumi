package com.rent.happy.cardetail;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CarDetailController {

	@RequestMapping(value = "/cardetail")
	public String eventinput2() {			
		
		return "cardetail";
		
	}
	
	
}
