package com.spring.service;

import java.util.List;

import com.spring.mapper.CommentVO;

public interface CommentService {
	
	public List<CommentVO> viewComment(int bno) throws Exception;
}
