package com.rent.happy.event;

import org.apache.ibatis.session.SqlSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// ✅ 여기에 아래 3줄 추가!
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;


@Controller
public class EventController {
        @Autowired
        SqlSession sqlSession;
		
        @RequestMapping("/eventinput")
        public String searchEvents(@RequestParam(value = "keyword", required = false) String keyword, Model model) {
           
            return "eventinput";
        }
        
        @RequestMapping(value = "/evinput")
        public String in() {
        	
        	return "evinput";
        }
        
        @RequestMapping(value = "/evsave")
        public String sa(HttpServletRequest request) {
        	String id = request.getParameter("id");
        	String title = request.getParameter("title");
        	EventService es = sqlSession.getMapper(EventService.class);
        	es.sa(id,title);
        	return "redirect:/main";
        }
        
        @RequestMapping(value = "eventsearch")
        public String search(HttpServletRequest request, Model model) {
        	String keyword = request.getParameter("keyword");
        	EventService es = sqlSession.getMapper(EventService.class); 
        	ArrayList<EventDTO> list = es.search(keyword);
        	model.addAttribute("list", list);
        	return "eventsearch";
        }


		@RequestMapping(value = "/eventinput2")
		public String eventinput2() {			
			
			return "eventinput2";
			
		}
		
		@RequestMapping(value = "/eventzero")
		public String eventinput3() {			
			
			return "eventzero";
			
		}
		@RequestMapping(value = "/eventzero2")
		public String eventinput4() {			
			
			return "eventzero2";
			
		}
		@RequestMapping(value = "/eventzero3")
		public String eventinput5() {			
			
			return "eventzero3";
			
		}
		@RequestMapping(value = "/eventzero4")
		public String eventinput6() {			
			
			return "eventzero4";
			
		}
		@RequestMapping(value = "/eventzero5")
		public String eventinput7() {			
			
			return "eventzero5";
			
		}
		@RequestMapping(value = "/eventzero6")
		public String eventinput8() {			
			
			return "eventzero6";
			
		}
		@RequestMapping(value = "/eventzero7")
		public String eventinput9() {			
			
			return "eventzero7";
			
		}
		@RequestMapping(value = "/eventzero8")
		public String eventinput10() {			
			
			return "eventzero8";
			
		}
		@RequestMapping(value = "/eventzero9")
		public String eventinput11() {			
			
			return "eventzero9";
			
		}
		@RequestMapping(value = "/eventzero10")
		public String eventinput12() {			
			
			return "eventzero10";
			
		}
		@RequestMapping(value = "/eventzero11")
		public String eventinput13() {			
			
			return "eventzero11";
			
		}
		@RequestMapping(value = "/eventzero12")
		public String eventinput14() {			
			
			return "eventzero12";
			
		}
	
	

}
