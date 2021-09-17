package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.CertificateDAO;
import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * @author Dang Vinh
 */
@Repository
public class CertificateDAOImpl implements CertificateDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public void insert(Certificate vo) {
		session.insert("Certificate.insert", vo);
		
	}

	@Override
	public void update(Certificate vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Certificate vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Certificate get(Certificate vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Certificate> list(Certificate vo) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @author Dang Vinh
	 */
	@Override
	public List<Certificate> list(Student vo) {
		return session.selectList("Certificate.selectListByStudent", vo);
	}

	@Override
	public Certificate get(Join join) {
		return session.selectOne("Certificate.selectOne", join);
	}

}
