package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.CommentDAO;
import com.spring.mapper.CommentVO;

@Service
public class CommentServiceImpl implements CommentService{
	
	@Autowired
	private CommentDAO dao;
	
	@Override
	public List<CommentVO> viewComment(int no) throws Exception {
		return dao.viewComment(no);
	}
	
}
