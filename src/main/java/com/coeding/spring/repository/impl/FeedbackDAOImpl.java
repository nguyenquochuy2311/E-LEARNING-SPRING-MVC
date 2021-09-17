package com.coeding.spring.repository.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.FeedbackDAO;
import com.coeding.spring.vo.Feedback;
import com.coeding.spring.vo.Star;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Feedback vo) {
		session.insert("Feedback.insert", vo);
		
	}

	@Override
	public void update(Feedback vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Feedback vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Feedback get(Feedback vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Feedback> list(Feedback vo) {
		return session.selectList("Feedback.selectList", vo);
	}

	@Override
	public List<Star> countFeedbackByStar(Feedback fb) {	
		return session.selectList("Feedback.countFeedbackByStar", fb);
	}

	
}
