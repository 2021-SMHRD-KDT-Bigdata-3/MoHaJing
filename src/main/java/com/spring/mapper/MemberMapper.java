package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface MemberMapper {
	
	// 회원가입
	public void joinTry(MemberVO vo);
	
	// 로그인
	public MemberVO logmain(String id);
	
	// 게시글 전체검색
	public List<BoardVO> community();
	
	// 게시글 검색
	public List<BoardVO> community_search(String search);
	
	// 게시글 하나 보기
	public BoardVO community_view(int no);
	
	// 댓글목록
	public List<CommentVO> viewComment(int no);
	
	// 댓글입력
	public int writeComment(int no);
	
	// 특정 댓글 읽기
	public CommentVO read(int no); 
	
	// 댓글 작성
	public void writeComment(CommentVO vo);
	
	// 게시글 입력
	public void insertBoard(BoardVO vo);
	
	// 마이페이지 정보 출력
	public MemberVO mypage(String id);
	
	// 마이페이지 정보 수정
	public void updateMypage(MemberVO vo);
	
	// 탈모 기본정보 출력
	public List<InfoVO> info();
	
	// 사용자 아이디랑 머리사진 저장
	public void deep1(Deep1VO vo);
	
	// 사용자 아이다, 머리사진, 스퀀스 select
	public Deep1VO deep1Select(int no);
	
	// 아이디로 딥러닝결과 select
	@Select("select no, id, img, result, percent, category, date(date) as date from mo_deep1 where id = #{id} and category = #{category}")
	public List<Deep1VO> idDeepSelect(Deep1VO vo);
	
	// 딥러닝결과 insert
	public void deepInsert(DeepVO vo);
	
	// 딥러닝결과 select
	public DeepVO deepSelect(int no);
	
	// 테스트중2
	public TestVO fileTest2(String id);
	
	// 체크박스 insert TEST
	public void checkInsert(CheckVO vo);
	
	// 체크박스 select TEST
	public CheckVO checkSelect(String id);
	
	// 체크박스 update TEST
	public void checkUpdate(CheckVO vo);
	
	// 추천음식 select
	public List<RecommandVO> foodSelect(String category); 
	
	// 추천음식 select
	public List<RecommandVO> planSelect(String category); 
	
	// 체크박스 원인 select
	public List<CheckRecommandVO> checkRecommandSelect();
	
	// 아이디 중복체크
	public int idCheck(String id);
	// sns 계정 연동 select
	public void snsjoin(MemberVO vo);
}
