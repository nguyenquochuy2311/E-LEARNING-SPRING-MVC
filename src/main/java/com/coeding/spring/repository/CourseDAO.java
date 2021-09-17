package com.coeding.spring.repository;

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
public interface CourseDAO extends DAO<Course>{

	List<Course> list(Student vo);

	List<Lesson> listLesson(Join join);

	List<Notice> listNotice(Join join);

	List<Reference> listRef(Join join);

	List<Course> listByCat(int cat_id);
	int saveSumProcess(Join join);
	/**
	 * 
	 * @author hai
	 *
	 */
	int getSum();
	List<Course> getAllcourses();
	public List<Course> getallv1();
	Course adminGetOne(Course vo);
	void adminInsert(Course vo);
	List<Lesson> getLessonByCourse(Course vo);
	void adminupdate(Course vo);
	void updatelessonadmin(Lesson vo);
	void deletelessonadmin(Lesson vo);
	List<Lesson> selectLessonNotCheck();
	void checklessonyes(Lesson vo);
	
	void insertJoin(Join vo);
	Join selectJoin(int student_id, int course_id);
	
	/**
	 * @author KhaiPhan
	 */
	List<Course> listC(Course vo);
	
	/**
	 * @author Minh Hieu
	 */	
	List<Course> listPage(Course vo);
	int countCourseCat(Course vo);
}
