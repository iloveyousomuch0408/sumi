package com.rent.happy.com.booking;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {

	@RequestMapping(value = "/booking")
	public String eventinput2() {			
		
		return "booking";
		
	}
	
	
}
