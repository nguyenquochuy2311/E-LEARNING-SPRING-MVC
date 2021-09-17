package com.coeding.spring.service;

import com.coeding.spring.vo.Lesson;

public interface LessonService extends SV<Lesson> {

	void saveProgress(int joinId, int lessonId, int progress);

}
