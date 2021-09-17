package com.coeding.spring.service;

public interface UserService<T> {

	T checkLogin(T vo);
	T checkUserName(T vo);
	T checkEmail(T vo);
	
}
