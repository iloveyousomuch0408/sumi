package com.rent.happy.sidemenu;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class SidmenuController {

	
	@RequestMapping(value = "/side")
	public String home() {
		
		
		return "sidemenuinput";
		
	}
		
}
