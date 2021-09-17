package com.coeding.spring.vo;

import java.util.Date;
import java.util.List;
import java.util.Set;

/*
 * @author Quoc Huy
 * 
 * */

public class Category {
	
	private List<Course> listCourse;
	private Set<Job> listJob;
	
	private int id;
	private String title;
	private String des;
	private String image;
	private int adminId;
	private Date createDate;
	private int type;
	
	private int pageId;
	private int total;
	
	
	
	
	/**
	 * @return the pageId
	 */
	public int getPageId() {
		return pageId;
	}
	/**
	 * @param pageId the pageId to set
	 */
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}
	/**
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}
	/**
	 * @return the type
	 */
	public int getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		this.type = type;
	}
	public List<Course> getListCourse() {
		return listCourse;
	}
	public void setListCourse(List<Course> listCourse) {
		this.listCourse = listCourse;
	}
	public Set<Job> getListJob() {
		return listJob;
	}
	public void setListJob(Set<Job> listJob) {
		this.listJob = listJob;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDes() {
		return des;
	}
	public void setDes(String des) {
		this.des = des;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getAdminId() {
		return adminId;
	}
	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}
