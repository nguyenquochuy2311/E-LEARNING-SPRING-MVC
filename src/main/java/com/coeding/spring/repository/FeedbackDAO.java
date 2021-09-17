package com.coeding.spring.repository;

import java.util.List;
import java.util.Map;

import com.coeding.spring.vo.Feedback;
import com.coeding.spring.vo.Star;

public interface FeedbackDAO extends DAO<Feedback>{

	List<Star> countFeedbackByStar(Feedback fb);

}
