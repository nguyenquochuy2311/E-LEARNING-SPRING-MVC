package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.CourseDAO;
import com.coeding.spring.service.CourseService;
import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Notice;
import com.coeding.spring.vo.Reference;
import com.coeding.spring.vo.Student;
import com.mysql.cj.Session;

/**
 * 
 * @author Dang Vinh
 *
 */
@Service("courseService")
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDAO courseDao;
	
	/**
	 * 
	 * @author Dang Vinh
	 *
	 */
	@Override
	public List<Course> listCourse(Student vo) {
		return courseDao.list(vo);
	}

	@Override
	public List<Lesson> listLesson(Join join) {
		return courseDao.listLesson(join);
	}

	@Override
	public Course getCourse(int courseId) {
		Course vo = new Course();
		vo.setId(courseId);
		return courseDao.get(vo);
	}

	@Override
	public List<Notice> listNotice(Join join) {
		return courseDao.listNotice(join);
	}

	@Override
	public List<Reference> listRef(Join join) {
		return courseDao.listRef(join);
	}

	@Override
	public List<Course> listByCat(int cat_id) {
		// TODO Auto-generated method stub
		return courseDao.listByCat(cat_id);
	}
	
	@Override
	public int saveSumProcess(Join join) {
		return courseDao.saveSumProcess(join);
	}
	
	/**
	 * 
	 * @author hai
	 *
	 */
	
	public int getSum() {
		return courseDao.getSum();
	}



	@Override
	public List<Course> getAllcourses() {
		// TODO Auto-generated method stub
		return courseDao.getAllcourses();
	}



	@Override
	public List<Course> getallv1() {
		// TODO Auto-generated method stub
		return courseDao.getallv1();
	}



	@Override
	public Course adminGetOne(Course vo) {
		return courseDao.adminGetOne(vo);
	}



	@Override
	public void adminInsert(Course vo) {
		courseDao.adminInsert(vo);
		
	}



	@Override
	public List<Lesson> getLessonByCourse(Course vo) {
		// TODO Auto-generated method stub
		return courseDao.getLessonByCourse(vo);
	}



	@Override
	public void adminupdate(Course vo) {
		courseDao.adminupdate(vo);
		
	}



	@Override
	public void updatelessonadmin(Lesson vo) {
		courseDao.updatelessonadmin(vo);
		
	}



	@Override
	public void deletesessionadmin(Lesson vo) {
		courseDao.deletelessonadmin(vo);
		
	}



	@Override
	public List<Lesson> selectLessonNotCheck() {
		// TODO Auto-generated method stub
		return courseDao.selectLessonNotCheck();
	}



	@Override
	public void checklessonyes(Lesson vo) {
		// TODO Auto-generated method stub
		courseDao.checklessonyes(vo);
	}
	
	/**
	 * @author Quoc Huy
	 * */
	public void update(Course vo){
		courseDao.update(vo);
	}
	
	@Override
	public void insertJoin(Join vo) {
		courseDao.insertJoin(vo);
	}

	@Override
	public Join selectJoin(int student_id, int course_id) {
		// TODO Auto-generated method stub
		return courseDao.selectJoin(student_id, course_id);
	}
	public void admindeletecourse(Course vo) {
		courseDao.delete(vo);
	}
	
	/**
	 * @author KhaiPhan
 	 */
	@Override
	public List<Course> getListCourse(Course course) {
		return courseDao.listC(course);
	}

	/**
	 * @author Minh Hieu
 	 */
	@Override
	public List<Course> listPage(Course vo) {
		return courseDao.listPage(vo);
	}

	@Override
	public int countCourseCat(Course vo) {
		return courseDao.countCourseCat(vo);
	}
}
