/**
 * @author minhhieu
 */
package com.coeding.spring.vo;

import java.util.Set;

/**
 * @author minhhieu
 *
 * 
 */
public class Interest {
	private int id;
	private Set<Student> studentId;
	private Set<Category> categoryId;
	private String experience;
	private String salary;
	private String workplaces;
	private int stuId;
	private int catId;
	
	
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the studentId
	 */
	public Set<Student> getStudentId() {
		return studentId;
	}
	/**
	 * @param studentId the studentId to set
	 */
	public void setStudentId(Set<Student> studentId) {
		this.studentId = studentId;
	}
	/**
	 * @return the categoryId
	 */
	public Set<Category> getCategoryId() {
		return categoryId;
	}
	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(Set<Category> categoryId) {
		this.categoryId = categoryId;
	}
	/**
	 * @return the experience
	 */
	public String getExperience() {
		return experience;
	}
	/**
	 * @param experience the experience to set
	 */
	public void setExperience(String experience) {
		this.experience = experience;
	}
	/**
	 * @return the salary
	 */
	public String getSalary() {
		return salary;
	}
	/**
	 * @param salary the salary to set
	 */
	public void setSalary(String salary) {
		this.salary = salary;
	}
	/**
	 * @return the workplaces
	 */
	public String getWorkplaces() {
		return workplaces;
	}
	/**
	 * @param workplaces the workplaces to set
	 */
	public void setWorkplaces(String workplaces) {
		this.workplaces = workplaces;
	}
	/**
	 * @return the stuId
	 */
	public int getStuId() {
		return stuId;
	}
	/**
	 * @param stuId the stuId to set
	 */
	public void setStuId(int stuId) {
		this.stuId = stuId;
	}
	/**
	 * @return the catId
	 */
	public int getCatId() {
		return catId;
	}
	/**
	 * @param catId the catId to set
	 */
	public void setCatId(int catId) {
		this.catId = catId;
	}
	
	
}
