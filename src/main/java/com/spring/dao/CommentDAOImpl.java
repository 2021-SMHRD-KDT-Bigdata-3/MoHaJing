package com.spring.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.spring.mapper.CommentVO;

@Repository
public class CommentDAOImpl implements CommentDAO{
	
	@Autowired(required=false)
	SqlSession sql;
	
	// 댓글 조회
	@Override
	public List<CommentVO> viewComment(int no) throws Exception {
		return sql.selectList("MemberMapper.viewComment", no);
	}
}
