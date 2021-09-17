package com.coeding.spring.repository;

public interface UserDAO<T>{
	
	T checkLogin(T vo);
	T checkEmail(T vo);
	T checkUserName(T vo);
	
}
