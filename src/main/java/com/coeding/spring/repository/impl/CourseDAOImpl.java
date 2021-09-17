package com.coeding.spring.repository.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.CourseDAO;
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
@Repository
public class CourseDAOImpl implements CourseDAO{
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Course vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Course vo) {
		// TODO Auto-generated method stub
		session.update("Course.update", vo);
	}

	@Override
	public void delete(Course vo) {
		session.delete("Course.admindeletecourse",vo);
		
	}

	@Override
	public Course get(Course vo) {
		return session.selectOne("Course.selectOne", vo);
	}

	@Override
	public List<Course> list(Course vo) {
		// TODO Auto-generated method stub
		return session.selectList("Course.selectList", vo);
	}
	
	/**
	 * @author Dang Vinh
	 */
	@Override
	public List<Course> list(Student vo) {
		return session.selectList("Course.getListByStudent", vo);
	}

	@Override
	public List<Lesson> listLesson(Join join) {
		int id = join.getId();
		return session.selectList("Course.selectListLesson", id);
	}

	@Override
	public List<Notice> listNotice(Join join) {
		int id = join.getCourseId();	
		return session.selectList("Course.selectListNotice", id);
	}

	@Override
	public List<Reference> listRef(Join join) {
		int id = join.getCourseId();
		return session.selectList("Course.selectListRef", id);
	}

	@Override
	public List<Course> listByCat(int cat_id) {
		// TODO Auto-generated method stub
		return session.selectList("Course.selectCourseByCat", cat_id);
	}
	
	@Override
	public int saveSumProcess(Join join) {
		int sumProcess = session.selectOne("Course.selectSumProcess", join.getId());
		if (sumProcess < join.getSumProcess()) {
			session.update("Course.updateSumProcess", join);
			sumProcess = session.selectOne("Course.selectSumProcess", join.getId());
		}
		return sumProcess;
	}
	/**
	 * @author hai
	 */
	@Override
	public int getSum() {
		 return session.selectOne("Course.selectCount");
	}

	@Override
	public List<Course> getAllcourses() {
		
		return session.selectList("Course.getAllcourses");
	}

	@Override
	public List<Course> getallv1() {
		return session.selectList("Course.selectCourseStudentTeacher");
	}

	@Override
	public Course adminGetOne(Course vo) {
		return session.selectOne("Course.adminselectOne",vo);
	}

	@Override
	public void adminInsert(Course vo) {
		session.insert("Course.admininsert",vo);
		
	}

	@Override
	public List<Lesson> getLessonByCourse(Course vo) {
		
		return session.selectList("Lesson.selectByCourse",vo);
	}

	@Override
	public void adminupdate(Course vo) {
		session.update("Course.adminupdate",vo);
		
	}

	@Override
	public void updatelessonadmin(Lesson vo) {
		session.update("Lesson.updatelessonadmin",vo);
		
	}

	@Override
	public void deletelessonadmin(Lesson vo) {
		session.delete("Lesson.admindeletelesson",vo);
		
	}

	@Override
	public List<Lesson> selectLessonNotCheck() {
		// TODO Auto-generated method stub
		 return session.selectList("Lesson.selectLessonNotCheck");
	}

	@Override
	public void checklessonyes(Lesson vo) {
		// TODO Auto-generated method stub
		session.update("Lesson.lessoncheckyes",vo);
	}

	@Override
	public void insertJoin(Join vo) {
		// TODO Auto-generated method stub
		session.insert("Course.insertJoin", vo);
	}

	@Override
	public Join selectJoin(int student_id, int course_id) {
		// TODO Auto-generated method stub
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("student_id", student_id);
		map.put("course_id", course_id);
		return session.selectOne("Course.selectJoinOne",map);
	}

	/**
	 * @author KhaiPhan
	 */
	@Override
	public List<Course> listC(Course vo) {
		return session.selectList("Course.selectListCourse", vo);
	}

	/**
	 * @author Minh Hieu
	 */
	@Override
	public List<Course> listPage(Course vo) {
		return session.selectList("Course.selectPage", vo);
	}

	@Override
	public int countCourseCat(Course vo) {
		return session.selectOne("Course.selectCountCourseCat",vo);
	}
}
