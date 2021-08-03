package com.spring.service;

import java.util.List;

import com.spring.mapper.CommentVO;

public interface CommentService {
	public int register(CommentVO vo);
	public CommentVO get(int no);
	public int remove(int no);
	public List<CommentVO> getList(int no);
}
