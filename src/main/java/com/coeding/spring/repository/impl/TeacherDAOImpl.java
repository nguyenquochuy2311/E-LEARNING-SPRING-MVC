package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.TeacherDAO;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Teacher;

/**
 * DAO
 * @author KhaiPhan
 *
 */
@Repository
public class TeacherDAOImpl implements TeacherDAO {

	@Autowired
	SqlSessionTemplate session;

	@Override
	public void insert(Teacher vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Teacher vo) {
		// TODO Auto-generated method stub
		session.update("Teacher.update", vo);
	}

	@Override
	public void delete(Teacher vo) {
		session.delete("Teacher.admindeletetacher",vo);
		
	}

	@Override
	public Teacher get(Teacher teacher) {
		// TODO Auto-generated method stub
		return session.selectOne("Teacher.selectOne", teacher);
	}


	@Override
	public List<Teacher> list(Teacher vo) {
		// TODO Auto-generated method stub
			return session.selectList("Teacher.selectList");
	}
	
	@Override
	public Teacher checkLogin(Teacher vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Teacher.checkLogin", vo);
	}

	@Override
	public Teacher checkEmail(Teacher vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Teacher checkUserName(Teacher vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Teacher.checkUsername", vo);
	}
	/*
	 * @author ngochai
	 * Dao get count
	 * */
	public int getSum() {
		 return session.selectOne("Teacher.selectCount");
	}
	/*
	 * @author ngochai
	 * 
	 * */
	@Override
	public void adminInsert(Teacher vo) {
		session.insert("Teacher.admininsert", vo);
		
	}
	/*
	 * @author ngochai
	 * 
	 * */
	@Override
	public Teacher adminselectOne(Teacher vo) {
		return (Teacher) session.selectOne("Teacher.adminselectOne", vo);
	}
	
	@Override
	public List<Course> adminselectByTeacher(Teacher vo) {
		return session.selectList("Course.adminselectCourseByTeacher", vo);
	}

	@Override
	public void adminupdate(Teacher vo) {
		session.update("Teacher.adminupdate",vo);
		
	}
}
