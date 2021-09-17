package com.coeding.spring.repository;

import com.coeding.spring.vo.Lesson;

public interface LessonDAO extends DAO<Lesson> {

	void saveProgress(int joinId, int lessonId, int progress);
	
}
