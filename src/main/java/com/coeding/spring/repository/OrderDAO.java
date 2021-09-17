package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;

public interface OrderDAO extends DAO<StudentOrders> {
	List<StudentOrders> list_POrders(Student vo);
	List<StudentOrders> adminlist();
}
