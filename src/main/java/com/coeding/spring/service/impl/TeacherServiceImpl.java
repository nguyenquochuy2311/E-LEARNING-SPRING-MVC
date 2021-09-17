package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.TeacherDAO;
import com.coeding.spring.service.TeacherService;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Teacher;

/**
 * teacherService Implements
 * 
 * @author KhaiPhan + Quoc Huy
 *
 */
@Service("teacherService")
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	private TeacherDAO teacherDao;

	@Override
	public void insert(Teacher vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Teacher vo) {
		// TODO Auto-generated method stub
		teacherDao.update(vo);
	}

	@Override
	public void delete(Teacher vo) {
		teacherDao.delete(vo);
		
	}

	@Override
	public Teacher get(Teacher vo) {
		// TODO Auto-generated method stub
		return teacherDao.get(vo);
	}

	@Override
	public List<Teacher> list(Teacher vo) {
		// TODO Auto-generated method stub
		return teacherDao.list(vo);
	}

	@Override
	public Teacher checkLogin(Teacher vo) {
		// TODO Auto-generated method stub
		return teacherDao.checkLogin(vo);
	}

	@Override
	public Teacher checkUserName(Teacher vo) {
		// TODO Auto-generated method stub
		return teacherDao.checkUserName(vo);
	}

	@Override
	public Teacher checkEmail(Teacher vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getSum() {
		return teacherDao.getSum();
	}

	@Override
	public void adminInsert(Teacher vo) {
		teacherDao.adminInsert(vo);
		
	}

	@Override
	public Teacher admingetOne(Teacher vo) {
		// TODO Auto-generated method stub
		return teacherDao.adminselectOne(vo);
	}

	@Override
	public List<Course> adminselectcourseByTeacher(Teacher vo) {
		// TODO Auto-generated method stub
		return teacherDao.adminselectByTeacher(vo);
	}

	@Override
	public void adminupdate(Teacher vo) {
		// TODO Auto-generated method stub
		teacherDao.adminupdate(vo);
	}

}
