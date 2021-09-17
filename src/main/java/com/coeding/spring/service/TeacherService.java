package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Teacher;

public interface TeacherService extends SV<Teacher>, UserService<Teacher> {
	public int getSum();
	public void adminInsert(Teacher vo);
	public Teacher admingetOne(Teacher vo);
	public List<Course> adminselectcourseByTeacher(Teacher vo) ;
	public void adminupdate(Teacher vo);
	
}
