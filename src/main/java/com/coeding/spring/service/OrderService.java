package com.coeding.spring.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;
/**
 * @author Quoc Huy
 * 
 * */
public interface OrderService extends SV<StudentOrders> {
	public List<StudentOrders> list_POrders(Student vo);
	public List<StudentOrders> adminlist();
}
