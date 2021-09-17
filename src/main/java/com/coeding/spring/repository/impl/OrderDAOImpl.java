package com.coeding.spring.repository.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.OrderDAO;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;
/**
 * @author Quoc Huy
 * 
 * */
@Repository
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(StudentOrders vo) {
		// TODO Auto-generated method stub
		session.insert("Order.insert", vo);
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
		return session.selectList("Order.selectPaymentOrder", vo);
	}

	@Override
	public List<StudentOrders> adminlist() {
		return session.selectList("Order.selectadminlist");
	}

}
