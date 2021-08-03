package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.mapper.CommentVO;
import com.spring.mapper.MemberMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class CommentServiceImpl implements CommentService{
	
	@Setter(onMethod_ = @Autowired)
	private MemberMapper mapper;
	
	@Override
	public int register(CommentVO vo) {
		log.info("register......" + vo);
		return mapper.writeComment(vo.getNo());
	}
	
	@Override
	public CommentVO get(int no) {
		log.info("get......" + no);
		return mapper.read(no);
	}
	
	@Override
	public int remove(int no) {
		log.info("remove......" + no);
		return mapper.delete(no);
	}
	
	@Override
	public List<CommentVO> getList(int no) {
		log.info("get comment List of a Board" + no);
		return mapper.viewComment(no);
	}
}
