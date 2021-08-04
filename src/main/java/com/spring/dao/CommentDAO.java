package com.spring.dao;

import java.util.List;

import com.spring.mapper.CommentVO;

public interface CommentDAO {
	
	// 댓글조회
	public List<CommentVO> viewComment(int no) throws Exception;
}
