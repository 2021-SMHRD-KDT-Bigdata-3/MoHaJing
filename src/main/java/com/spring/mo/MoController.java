package com.spring.mo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class MoController {

		@RequestMapping("/main.do")
		public String main() {
			return "main";
		}
		
		@RequestMapping("/community.do")
		public String community() {
			return "community";
		}
		
		@RequestMapping("/consulting.do")
		public String consulting() {
			return "consulting";
		}	
}
