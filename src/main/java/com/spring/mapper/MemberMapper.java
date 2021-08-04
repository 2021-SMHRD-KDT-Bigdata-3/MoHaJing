package com.spring.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;


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

}
