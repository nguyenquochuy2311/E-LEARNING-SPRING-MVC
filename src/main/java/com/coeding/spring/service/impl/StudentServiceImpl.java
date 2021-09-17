package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.StudentDAO;
import com.coeding.spring.service.StudentService;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh
 *
 */
@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDao;
	/**
	 * 
	 * @author Dang Vinh
	 *
	 */
	@Override
	public Student get(Student vo) {
		return studentDao.get(vo);
	}
	@Override
	public void update(Student vo) {
		studentDao.update(vo);
	}
	@Override
	public void delete(Student vo) {
		// TODO Auto-generated method stub
		
	}
	@Override
	public List<Student> list(Student vo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/**
	 * @author Quoc Huy
	 * Service Login
	 * */
	@Override
	public void insert(Student vo) {
		studentDao.insert(vo);
	}
	@Override
	public Student checkLogin(Student vo) {
		// TODO Auto-generated method stub
		return studentDao.checkLogin(vo);
	}
	@Override
	public Student checkUserName(Student vo) {
		// TODO Auto-generated method stub
		return studentDao.checkUserName(vo);
	}
	@Override
	public Student checkEmail(Student vo) {
		// TODO Auto-generated method stub
		return studentDao.checkEmail(vo);
	}

	/**
	 * 	DAO
	 * @author NGOCHAI
	 *
	 */

	@Override
	public int getSum() {
		// TODO Auto-generated method stub
		return studentDao.getSum();
	}
	@Override
	public List<Student> selectTop5() {
		// TODO Auto-generated method stub
		return studentDao.selectTop5();
	}
	public List<Student> adminGetAll() {
		
		return studentDao.admiGetAll();
	}
	@Override
	public List<Course> selectCourseByStudent(Student vo) {
		// TODO Auto-generated method stub
		return studentDao.selectCourseByStudent(vo);
	}
	@Override
	public void adminInsert(Student vo) {
		studentDao.adminInsert(vo);
		
	}
	@Override
	public List<Join> listJoinAdmin() {
		// TODO Auto-generated method stub
		return studentDao.listJoinAdmin();
	}
	@Override
	public void admindelete(Student vo) {
		studentDao.deleteadmin(vo);
		
	}
	@Override
	public void deleteapply(Student vo) {
		studentDao.deleteapply(vo);
		
	}
}
