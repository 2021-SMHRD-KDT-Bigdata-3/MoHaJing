package com.spring.dao;

import java.util.List;

import com.spring.mapper.CommentVO;

public interface CommentDAO {
	
	// ๋๊ธ์กฐํ
	public List<CommentVO> viewComment(int no) throws Exception;
}
