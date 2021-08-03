package com.spring.mo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.mapper.BoardVO;
import com.spring.mapper.CommentVO;
import com.spring.mapper.InfoVO;
import com.spring.mapper.MemberMapper;
import com.spring.mapper.MemberVO;
import com.spring.service.CommentService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MoController {

	@Setter(onMethod_ = @Autowired)
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
	public String community(String id, String search, Model model) {
		System.out.println(search);
		
		if(search==null) {
			List<BoardVO> list = memberMapper.community();
			model.addAttribute("list", list);
			MemberVO vo = memberMapper.logmain(id); // 현재 로그인한 사용자 정보
			model.addAttribute("vo", vo);
			return "community";
		}else {
			List<BoardVO> list = memberMapper.community_search(search);
			model.addAttribute("list", list);
			MemberVO vo = memberMapper.logmain(id); // 현재 로그인한 사용자 정보
			model.addAttribute("vo", vo);
			return "community";
		}
	}

	// 게시글 하나 보기 + 댓글보기
	@RequestMapping("/community_view.do")
	public String community_view(int no, String id, Model model) {
		BoardVO vo = memberMapper.community_view(no); // 게시글
		List<CommentVO> list = memberMapper.viewComment(no); // 댓글
		model.addAttribute("id", id); // 현재 로그인한 아이디
		model.addAttribute("vo", vo); // 게시글 내용
		model.addAttribute("list", list); // 해당 게시글의 댓글
		return "community_view";
	}

	// 댓글입력
	@RequestMapping("/writeComment.do")
	public String writeComment(CommentVO vo) {
		memberMapper.writeComment(vo);
		return "redirect:/community_view.do?no="+vo.getNo()+"&id="+vo.getId();
	}
	
	// 댓글 컨트롤러(서비스)
	@RequestMapping("/replies.do")
	@RestController
	public class CommentController {
		private CommentService service;
		
		@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
		public ResponseEntity<String> create(@RequestBody CommentVO vo) {
			log.info("CommentVO: " + vo);
			int insertCount = service.register(vo);
			log.info("Reply INSERT COUNT: " + insertCount);
			return insertCount == 1
			? new ResponseEntity<>("success", HttpStatus.OK)
			: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
			//삼항 연산자 처리
		}
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

	
	// 분석2 : 파일 업로드하고 진단시작 버튼있는 페이지로 가는거임
	@RequestMapping("/execution2.do")
	public String execution2(String id, Model model) {
		MemberVO vo = memberMapper.logmain(id);
		model.addAttribute("vo", vo);
		return "execution2";
	}	
	
	//진단결과화면
	@RequestMapping("/result.do")
	public String result() {
		return "result";
	}	
	
	// 진단용 이미지 업로드 넘어가는 페이지
	@RequestMapping("/fileTest.do")
	public String fileTest(String id, String img, Model model) {
		model.addAttribute("id", id);
		model.addAttribute("img", img);
		return "fileTest";
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
	public String info(String id, Model model) {
		MemberVO vo = memberMapper.mypage(id); // 현재 로그인한 아이디
		List<InfoVO> list = memberMapper.info();
		model.addAttribute("vo", vo);
		model.addAttribute("list", list);
		return "info";
	}


}
