package com.coeding.spring.service;

import java.util.List;

public interface SV<T> {
	
	void insert(T vo);
	void update(T vo);
	void delete(T vo);
	T get(T vo);
	List<T> list(T vo);
}
