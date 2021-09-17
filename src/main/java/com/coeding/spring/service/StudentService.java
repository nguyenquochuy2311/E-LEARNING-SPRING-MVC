package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh
 *
 */
public interface StudentService extends SV<Student>, UserService<Student>{
	/*
	 * @author ngochai
	 * 
	 * */
	int getSum();
	public List<Student> selectTop5();
	public List<Course> selectCourseByStudent(Student vo);
	public void adminInsert(Student vo);
	public List<Join> listJoinAdmin();
	void admindelete(Student vo);
	void deleteapply(Student vo);
}
