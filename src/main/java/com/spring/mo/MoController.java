package com.spring.mo;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mapper.MemberMapper;
import com.spring.mapper.MemberVO;


@Controller
public class MoController {
	
	@Autowired
	private MemberMapper memberMapper;
	
	@RequestMapping("/main.do")
	public String main() {
		return "main";
	}
		
	
	// 회원가입 페이지로 가기
	@RequestMapping("/join.do")
	public String join() {
		return "join";
	}
		
	// 회원가입 시도
	@RequestMapping("/joinTry.do")
	public String joinTry(MemberVO vo) {
		memberMapper.joinTry(vo);
		return "redirect:/main.do";
	}
	
	// 로그인 페이지로 가기
	@RequestMapping("/login.do")
	public String login() {
		return "login";
	}
	
	// 로그인 시도
	@RequestMapping("/loginTry.do")
	public String loginTry(@RequestParam HashMap<String, String> paramMap) {
		String id = paramMap.get("id");
		String pw = paramMap.get("pw");
		
		MemberVO vo = memberMapper.loginTry(id);
		System.out.println(vo.getId());
		
		if(pw.equals(vo.getPw())) {
			return "logmain";
		}else {
			return "redirect:/login.do";
		}
	}
	
	
}
