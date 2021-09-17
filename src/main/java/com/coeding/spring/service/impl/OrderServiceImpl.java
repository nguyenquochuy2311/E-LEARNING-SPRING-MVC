package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.OrderDAO;
import com.coeding.spring.service.OrderService;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;
/**
 * @author Quoc Huy
 * 
 * */
@Service("orderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDAO orderDao;
	
	@Override
	public void insert(StudentOrders vo) {
		// TODO Auto-generated method stub
		orderDao.insert(vo);
	}

	@Override
	public void update(StudentOrders vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(StudentOrders vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public StudentOrders get(StudentOrders vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentOrders> list(StudentOrders vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<StudentOrders> list_POrders(Student vo) {
		// TODO Auto-generated method stub
		return orderDao.list_POrders(vo);
	}

	@Override
	public List<StudentOrders> adminlist() {
		return orderDao.adminlist();
	}

}
