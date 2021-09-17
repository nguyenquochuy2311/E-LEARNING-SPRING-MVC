package com.coeding.spring.repository.impl;


import java.util.List;


import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.StudentDAO;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh
 *
 */
@Repository
public class StudentDAOImpl implements StudentDAO {

	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(Student vo) {
		// TODO Auto-generated method stub
		session.insert("Student.insert", vo);
	}

	@Override
	public void update(Student vo) {
		session.update("Student.update", vo);
	}

	@Override
	public void delete(Student vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Student get(Student vo) {
		return session.selectOne("Student.selectOne", vo);
	}

	@Override
	public List<Student> list(Student vo) {
		// TODO Auto-generated method stub
		return null;
	}
	
//	public Student getStudent(Student vo) {
//		return session.selectOne("Student.selectOne", vo);
//	}
//	
//	public void update(Student param) {
//		session.update("Student.update", param);
//	}
//	
//	public List<Course> listCourse(Student param){
//		return session.selectList("Course.getCourseById", param.getId());
//	}
//
//	public List<Payment> listPayment(Student param) {
//		return session.selectList("Payment.getPaymentById", param.getId());
//	}
	
	
	/*
	 * @author Quoc Huy
	 * Dao Login
	 * */
	@Override
	public Student checkLogin(Student vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Student.checkLogin", vo);
	}
	@Override
	public Student checkEmail(Student vo) {
		return session.selectOne("Student.checkEmail", vo);
	}
	@Override
	public Student checkUserName(Student vo) {
		return session.selectOne("Student.checkUsername", vo);
	}
	
	/*
	 * @author ngochai
	 * Dao get count,selecttop5
	 * */
	public int getSum() {
		 return session.selectOne("Student.selectCount");
	}

	@Override
	public List<Student> selectTop5() {
		return session.selectList("Student.selectTop5student");
	}
	
	@Override
	public List<Student> admiGetAll() {
		return session.selectList("Student.selectList");
	}
	public List<Course> selectCourseByStudent(Student vo){
		return session.selectList("Course.selectByStudent",vo);
	}

	@Override
	public void adminInsert(Student vo) {
		session.insert("Student.admininsert", vo);
		
	}

	@Override
	public List<Join> listJoinAdmin() {
		// TODO Auto-generated method stub
		return session.selectList("Join.listjoinadmin");
	}

	@Override
	public void deleteadmin(Student vo) {
		session.delete("Student.admindelete",vo);		
	}

	@Override
	public void deleteapply(Student vo) {
		session.delete("Student.deleteapply",vo);		
		
	}
}
