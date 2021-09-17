package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh + Quoc Huy
 *
 */
public interface StudentDAO extends DAO<Student>, UserDAO<Student>{
	/*
	 * @author ngochai
	 * */
	int getSum();
	public List<Student> selectTop5();
	public List<Student> admiGetAll();
	public List<Course> selectCourseByStudent(Student vo);
	public void adminInsert(Student vo);
	List<Join> listJoinAdmin();
	void deleteadmin(Student vo);
	void deleteapply(Student vo);
}
