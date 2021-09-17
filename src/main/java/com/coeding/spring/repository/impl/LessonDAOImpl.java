package com.coeding.spring.repository.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.LessonDAO;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Progress;

@Repository
public class LessonDAOImpl implements LessonDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Lesson vo) {
		// TODO Auto-generated method stub
		session.insert("Lesson.insert", vo);
	}

	@Override
	public void update(Lesson vo) {
		// TODO Auto-generated method stub
		session.update("Lesson.update", vo);
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

	@Override
	public void saveProgress(int joinId, int lessonId, int progress) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("joinId", joinId);
		map.put("lessonId", lessonId);
		map.put("progress", progress);
		Progress prog = session.selectOne("Lesson.getProgress", map);
		if (prog == null) {
			map.put("status", progress==100 ? 1 : 0);
			session.insert("Lesson.insertProgress", map);
		} else if (prog.getStatus()==0 && progress==100){
			map.put("status", 1);
			session.update("Lesson.updateProgress", map);
		} else {
			map.put("status", prog.getStatus());
			session.update("Lesson.updateProgress", map);
		}
	}
}
