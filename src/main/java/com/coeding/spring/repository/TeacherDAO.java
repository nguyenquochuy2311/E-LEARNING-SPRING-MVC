package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Teacher;

/**
 * 
 * @author KhaiPhan
 *
 */
public interface TeacherDAO extends DAO<Teacher>, UserDAO<Teacher>{
	/**
	* 
	* @author ngochai
	*
	*/
	public int getSum() ;
	public void adminInsert(Teacher vo);	
	public Teacher adminselectOne(Teacher vo) ;
	public List<Course> adminselectByTeacher(Teacher vo) ;
	public void adminupdate(Teacher vo) ;
	
	
}
