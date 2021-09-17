package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Feedback;
import com.coeding.spring.vo.Star;

public interface FeedbackService extends SV<Feedback> {

	List<Star> countFeedbackByStar(Feedback fb);

}
