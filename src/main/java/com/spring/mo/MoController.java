package com.spring.mo;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mapper.BoardVO;
import com.spring.mapper.CommentVO;
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
	public String loginTry(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {

		MemberVO vo = memberMapper.loginTry(id);

		if (pw.equals(vo.getPw())) {
			// 로그인성공 --> 회원정보 전달
			model.addAttribute("vo", vo);
			return "logmain";
		} else {
			// 로그인실패 --> 로그인창으로 다시 go
			return "redirect:/login.do";
		}
	}

	// 게시글 전체 목록 보기
	@RequestMapping("/community.do")
	public String community(Model model) {
		//List<BoardVO> list = memberMapper.community();
		//model.addAttribute("list", list);
		return "community";
	}
	
	// 게시글 하나 보기 + 댓글보기
	@RequestMapping("/community_view.do")
	public String community_view(int no, Model model) {
		BoardVO vo = memberMapper.community_view(no); // 게시글
		List<CommentVO> list = memberMapper.viewComment(no); // 댓글
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		return "community_view";
	}
	
	// 댓글입력
	@RequestMapping("/writeComment.do")
	public String writeComment(int no) {
		memberMapper.writeComment(no);
		return "redirect:/community_view.do";
	}
	
	// 게시글 입력 페이지 보기
	@RequestMapping("/writeBoard.do")
	public String writeBoard(String id, Model model) {
		model.addAttribute("id", id);
		return "writeBoard";
	}
	
	// 게시글 입력 기능
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo) {
		memberMapper.insertBoard(vo);
		return "redirect:/community.do";
	}
		
	@RequestMapping("/consulting.do")
	public String consulting() {
		return "consulting";
	}	

	@RequestMapping("/mypage.do")
	public String mypage() {
		return "mypage";
	}	
}
