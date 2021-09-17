package com.coeding.spring.vo;

import java.sql.Date;
import java.util.List;

/**
 * 
 * @author Dang Vinh
 *
 */
public class Course {
	/**
	 * 
	 * @author hai
	 *
	 */
	private List<Teacher> listTeacher;
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getTeacherId() {
		return teacherId;
	}
	public void setTeacherId(int teacherId) {
		this.teacherId = teacherId;
	}
	private List<Student> listStudent;
	private int categoryId;
	private int teacherId;
	
	public List<Teacher> getListTeacher() {
		return listTeacher;
	}
	public void setListTeacher(List<Teacher> listTeacher) {
		this.listTeacher = listTeacher;
	}
	public List<Student> getListStudent() {
		return listStudent;
	}
	public void setListStudent(List<Student> listStudent) {
		this.listStudent = listStudent;
	}
	private int id;
	private String title;
	private String des;
	private double price;
	private String image;
	
	private Teacher teacher;
	private Category category;
	
	private int adminId;
	private int status;
	private Date createDate;
	
	private int pageId;
	private int total;
	
	private List<Notice> notice;
	private List<Reference> reference;
	
	
	
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPriceP() {
		return String.format("%.2f", price);
	}
	public void setPriceP(String price) {
		this.price = Float.parseFloat(price);
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
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public List<Notice> getNotice() {
		return notice;
	}
	public void setNotice(List<Notice> notice) {
		this.notice = notice;
	}
	public List<Reference> getReference() {
		return reference;
	}
	public void setReference(List<Reference> reference) {
		this.reference = reference;
	}
	
	private List<Book> book;
	public List<Book> getBook() {
		return book;
	}
	public void setBook(List<Book> book) {
		this.book = book;
	}
	
}