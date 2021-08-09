package com.spring.mo;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.mapper.BoardVO;
import com.spring.mapper.CheckVO;
import com.spring.mapper.CommentVO;
import com.spring.mapper.Deep1VO;
import com.spring.mapper.DeepVO;
import com.spring.mapper.InfoVO;
import com.spring.mapper.MemberMapper;
import com.spring.mapper.MemberVO;
import com.spring.mapper.TestVO;
import com.spring.service.CommentService;
import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MoController {

	@Autowired
	private CommentService service;

	@Autowired
	private MemberMapper memberMapper;

	@RequestMapping("/execution.do")
	public String execution(String id, Model model) {
		MemberVO vo = memberMapper.logmain(id);
		model.addAttribute("vo", vo); // 회원정보 add
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
	public String joinTry(MemberVO vo, CheckVO check) {
		memberMapper.checkInsert(check);
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

		if (search == null) {
			List<BoardVO> list = memberMapper.community();
			model.addAttribute("list", list);
			MemberVO vo = memberMapper.logmain(id); // 현재 로그인한 사용자 정보
			model.addAttribute("vo", vo); // 현재 로그인한 사용자 정보
			return "community";
		} else {
			List<BoardVO> list = memberMapper.community_search(search);
			model.addAttribute("list", list);
			MemberVO vo = memberMapper.logmain(id); // 현재 로그인한 사용자 정보
			model.addAttribute("vo", vo); // 현재 로그인한 사용자 정보
			return "community";
		}
	}

	// 게시글 하나 보기 + 댓글보기
	@RequestMapping("/community_view.do")
	public String community_view(int no, String id, Model model) {
		MemberVO member = memberMapper.logmain(id); // 현재 로그인한 아이디
		BoardVO board = memberMapper.community_view(no); // 게시글 번호
		List<CommentVO> list = memberMapper.viewComment(no); // 게시글 번호의 댓글
		model.addAttribute("vo", member); // 현재 로그인한 정보
		model.addAttribute("vo2", board); // 게시글 내용
		model.addAttribute("list", list); // 해당 게시글의 댓글
		return "community_view";
	}

	// 게시판 조회
	@RequestMapping("/viewComment.do")
	public String read(CommentVO vo, Model model) throws Exception {
		log.info("read");
		model.addAttribute("read", memberMapper.read(vo.getNo()));
		List<CommentVO> commentList = service.viewComment(vo.getNo());
		model.addAttribute("commentList", commentList);

		return "viewComment";
	}

	// 댓글입력
	@RequestMapping("/writeComment.do")
	public String writeComment(CommentVO vo) {
		memberMapper.writeComment(vo);
		return "redirect:/community_view.do?no=" + vo.getNo() + "&id=" + vo.getId();
	}

	// 게시글 입력 페이지 보기
	@RequestMapping("/writeBoard.do")
	public String writeBoard(String id, Model model) {
		MemberVO vo = memberMapper.logmain(id);
		model.addAttribute("vo", vo);
		return "writeBoard";
	}

	// 게시글 입력 기능
	@RequestMapping("/insertBoard.do")
	public String insertBoard(BoardVO vo) throws IOException {

		// 파일 업로드 처리
		String file = null;
		MultipartFile uploadFile = vo.getUploadFile();
		if (!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 구하기
			file = uuid + "." + ext;
			uploadFile.transferTo(new File("C:\\upload\\" + file));
		}
		vo.setFile(file);
		memberMapper.insertBoard(vo);
		return "redirect:/community.do?id=" + vo.getId();
	}

	// 1:1대화창 보기
	@RequestMapping("/consulting.do")
	public String consulting(String id, Model model) {
		MemberVO vo = memberMapper.mypage(id);
		model.addAttribute("vo", vo);
		return "consulting";

	}
	// 진단실행화면2

	// 분석2 : 파일 업로드하고 진단시작 버튼있는 페이지로 가는거임
	@RequestMapping("/execution2.do")
	public String execution2(String id, String category, Model model) {
		MemberVO vo = memberMapper.logmain(id);
		model.addAttribute("vo", vo);
		model.addAttribute("category", category);
		return "execution2";
	}
	
	/*
	// 진단결과화면
	@RequestMapping("/result.do")
	public String result(Deep1VO deep1, Model model) {
		// 사용자 아이디랑 머리사진 저장
		model.addAttribute("deep1", deep1);
		return "result";
	}
	*/
	/*
	// 진단용 이미지 업로드 넘어가는 페이지
	@RequestMapping("/deep1.do")
	public String deep1(Deep1VO deep1, Model model) throws IOException {
		// 파일 업로드 처리
		String img = null;
		MultipartFile uploadFile = deep1.getUploadImg();
		if (!uploadFile.isEmpty()) {
			String originalFileName = uploadFile.getOriginalFilename();
			String ext = FilenameUtils.getExtension(originalFileName); // 확장자 구하기
			UUID uuid = UUID.randomUUID(); // UUID 구하기
			img = uuid + "." + ext;
			uploadFile.transferTo(new File("C:\\upload\\" + img));
		}
		deep1.setImg(img);
		memberMapper.deep1(deep1); // 사용자 아이디, 이미지 insert
		Deep1VO deep1Result = memberMapper.deep1Select(deep1); // 사용자 아이디, 이미지, 시퀀스 select
		model.addAttribute("deep1", deep1Result);
		return "result2";
	}*/
	
	@RequestMapping("/deep1.do")
	public String deep1(String no, Model model) {
		System.out.println(no);
		int num = Integer.parseInt(no);
		Deep1VO deep1 = memberMapper.deep1Select(num); // 딥러닝 분석 결과
		MemberVO vo = memberMapper.logmain(deep1.getId()); // 회원정보
		model.addAttribute("deep1", deep1);
		model.addAttribute("vo", vo);
		return "result2";
	}
	
	
	/*
	// loading.jsp --> result.jsp 이동할거임
	@RequestMapping("/result.jsp")
	public String result(Deep1VO deep1, String category, String step, float percent, Model model) {
		DeepVO deep = null;
		deep.setNo(deep1.getNo());
		deep.setId(deep1.getId());
		deep.setImg(deep1.getImg());
		deep.setCategory(category);
		deep.setStep(step);
		deep.setPercent(percent);
		memberMapper.deepInsert(deep); // 고유번호, 아이디, 이미지이름, 탈모유형, 탈모단계, 확률 insert
		DeepVO deepResult = memberMapper.deepSelect(deep1.getNo()); // 고유번호로 결과 select (이게 사용자에게 뿌려줄 결과)
		MemberVO vo = memberMapper.logmain(deep1.getId()); // 로그인한 사용자 정보
		model.addAttribute("vo", vo);
		model.addAttribute("result", deepResult);
		return "result";
	}
	*/
	
	// 진단기록화면
	@RequestMapping("/record.do")
	public String record() {
		return "record";
	}

	// 마이페이지 정보 출력
	@RequestMapping("/mypage.do")
	public String mypage(String id, Model model) {
		MemberVO vo = memberMapper.mypage(id);
		CheckVO check = memberMapper.checkSelect(id);
		model.addAttribute("vo", vo);
		model.addAttribute("check", check);
		return "mypage";
	}

	// 마이페이지 정보 수정 기능
	@RequestMapping("/updateMypage.do")
	public String updateMypage(MemberVO vo) {
		memberMapper.updateMypage(vo);
		return "redirect:/mypage.do?id=" + vo.getId();
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
	
	@RequestMapping("/infoList.do")
	public String infoList() {
		return "infoList";
	}

	// 플라스크 테스트
	@RequestMapping("/flaskget.do")
	public String flasktest(String id, Model model) {
		model.addAttribute("id", id);
		return "flasktest";
	}

	@RequestMapping("/result.do")
	public String result() {
		return "result";
	}	
	@RequestMapping("/infoList2.do")
	public String infoList2() {
		return "infoList2";
	}
	
	@RequestMapping("/infoList3.do")
	public String infoList3() {
		return "infoList3";
	}
	
	@RequestMapping("/infoList4.do")
	public String infoList4() {
		return "infoList4";
	}
	
	@RequestMapping("/infoList5.do")
	public String infoList5() {
		return "infoList5";
	}
	
	@RequestMapping("/infoList6.do")
	public String infoList6() {
		return "infoList6";
	}

	@RequestMapping("/executionList.do")
	public String executionList(Deep1VO vo, Model model) {
		List<Deep1VO> list = memberMapper.idDeepSelect(vo);
		model.addAttribute("list", list);
		return "executionList";
	}
	
	@RequestMapping("/executionList2.do")
	public String executionList2(Deep1VO vo, Model model) {
		List<Deep1VO> list = memberMapper.idDeepSelect(vo);
		model.addAttribute("list", list);
		return "executionList2";
	}
	

}
