package com.spring.mo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.mapper.BoardVO;
import com.spring.mapper.CommentVO;
import com.spring.mapper.InfoVO;
import com.spring.mapper.MemberMapper;
import com.spring.mapper.MemberVO;

@Controller
public class MoController {

	@Autowired
	private MemberMapper memberMapper;
	@RequestMapping("/execution.do")
	public String execution() {
		return "execution";
	}	

	// 첫화면
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

	// 로그인 시도
	@RequestMapping("/logmain.do")
	public String logmain(@RequestParam("id") String id, @RequestParam("pw") String pw, Model model) {
		MemberVO vo = memberMapper.logmain(id);
		if (pw.equals(vo.getPw())) {
			// 로그인성공 --> 회원정보 전달
			model.addAttribute("vo", vo);
			return "logmain";
		} else {
			// 로그인실패 --> 메인창으로 다시 go
			return "redirect:/main.do";
		}
	}

	// 게시글 전체 목록 보기
	@RequestMapping("/community.do")
	public String community(String id, Model model) {
		List<BoardVO> list = memberMapper.community();
		model.addAttribute("id", id); // 현재 로그인한 아이디
		model.addAttribute("list", list);
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
		model.addAttribute("id", id); // 현재 로그인한 아이디
		return "writeBoard";
	}

	// 게시글 입력 기능
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo) {
		System.out.println(vo.getTitle());
		System.out.println(vo.getContent());
		memberMapper.insertBoard(vo);
		return "redirect:/community.do?id="+vo.getId();
	}

	// 1:1대화창 보기
	@RequestMapping("/consulting.do")
	public String consulting() {
		return "consulting";

	}	
	//진단실행화면2
	@RequestMapping("/execution2.do")
	public String execution2() {
		return "execution2";
	}	
	
	//진단결과화면
	@RequestMapping("/result.do")
	public String result() {
		return "result";
	}	

	//진단기록화면
		@RequestMapping("/record.do")
		public String record() {
			return "record";
		}	

	// 마이페이지 정보 출력
	@RequestMapping("/mypage.do")
	public String mypage(String id, Model model) {
		MemberVO vo = memberMapper.mypage(id);
		model.addAttribute("vo", vo);
		return "mypage";
	}

	// 마이페이지 정보 수정 기능
	@RequestMapping("/updateMypage.do")
	public String updateMypage(MemberVO vo) {
		memberMapper.updateMypage(vo);
		return "redirect:/mypage.do?id="+vo.getId();
	}

	// 탈모 기본정보 출력
	@RequestMapping("/info.do")
	public String info(Model model) {
		List<InfoVO> list = memberMapper.info();
		model.addAttribute("list", list);
		return "info";
	}


}
