package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.LessonDAO;
import com.coeding.spring.service.LessonService;
import com.coeding.spring.vo.Lesson;

@Service
public class LessonServiceImpl implements LessonService {

	@Autowired
	LessonDAO lessonDao;

	@Override
	public void saveProgress(int joinId, int lessonId, int progress) {
		lessonDao.saveProgress(joinId, lessonId, progress);
	}

	@Override
	public void insert(Lesson vo) {
		// TODO Auto-generated method stub
		lessonDao.insert(vo);
	}

	@Override
	public void update(Lesson vo) {
		// TODO Auto-generated method stub
		lessonDao.update(vo);
	}

	@Override
	public void delete(Lesson vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Lesson get(Lesson vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Lesson> list(Lesson vo) {
		// TODO Auto-generated method stub
		return null;
	}
}
