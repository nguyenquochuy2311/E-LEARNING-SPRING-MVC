package com.coeding.spring.service.impl;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.CertificateDAO;
import com.coeding.spring.service.CertificateService;
import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * @author Dang Vinh
 */
@Service
public class CertificateServiceImpl implements CertificateService{

	@Autowired
	private CertificateDAO certDao;
	
	/**
	 * @author Dang Vinh
	 */
	@Override
	public List<Certificate> ListCert(Student vo) {
		return certDao.list(vo);
	}

	@Override
	public Certificate get(Join join) {
		return certDao.get(join);
	}

	@Override
	public void insert(Certificate vo) {	
		certDao.insert(vo);				
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

}
