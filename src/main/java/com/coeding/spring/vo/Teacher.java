package com.coeding.spring.vo;

import java.sql.Date;
import java.util.List;
/**
 * @author Dang Vinh + Quoc Huy
 * 
 * */
public class Teacher extends User {
	private int adminId;

	private List<Course> courseId;
	
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public List<Course> getCourseId() {
		return courseId;
	}
	public void setCourseId(List<Course> courseId) {
		this.courseId = courseId;
	}
	
}
