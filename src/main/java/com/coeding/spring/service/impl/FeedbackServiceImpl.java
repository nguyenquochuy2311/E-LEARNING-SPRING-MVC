package com.coeding.spring.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.FeedbackDAO;
import com.coeding.spring.service.FeedbackService;
import com.coeding.spring.vo.Feedback;
import com.coeding.spring.vo.Star;

@Service
public class FeedbackServiceImpl implements FeedbackService{

	@Autowired
	private FeedbackDAO feedbackDao;
	
	@Override
	public void insert(Feedback vo) {
		feedbackDao.insert(vo);
		
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
		return feedbackDao.list(vo);
	}

	@Override
	public List<Star> countFeedbackByStar(Feedback fb) {
		return feedbackDao.countFeedbackByStar(fb);
	}

}
