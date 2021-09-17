package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Course;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Lesson;
import com.coeding.spring.vo.Notice;
import com.coeding.spring.vo.Reference;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh
 *
 */
public interface CourseService {

	List<Course> listCourse(Student vo);
	List<Lesson> listLesson(Join join);
	Course getCourse(int courseId);
	List<Notice> listNotice(Join join);
	List<Reference> listRef(Join join);
	int saveSumProcess(Join join);
	
	List<Course> listByCat(int cat_id);
	

/**
 * 
 * @author hai
 *
 */
	List<Course> getAllcourses();
	public List<Course> getallv1();
	public Course adminGetOne(Course vo) ;
	void adminInsert(Course vo);
	public List<Lesson> getLessonByCourse(Course vo) ;
	void adminupdate(Course vo);
	void updatelessonadmin(Lesson vo);
	void deletesessionadmin(Lesson vo);
	public List<Lesson> selectLessonNotCheck() ;
	public void checklessonyes(Lesson vo);
	
	public void insertJoin(Join vo);
	public Join selectJoin(int student_id, int course_id);

	/**
	 * @author KhaiPhan
	 */
	List<Course> getListCourse(Course course);
	
	/**
	 * @author Minh Hieu
	 */	
	List<Course> listPage(Course vo);
	int countCourseCat(Course vo);

}