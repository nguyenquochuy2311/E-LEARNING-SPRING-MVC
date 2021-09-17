package com.coeding.spring.repository;

import java.util.List;

public interface DAO<T> {
	// CRUD methods
	void insert(T vo);

	void update(T vo);

	void delete(T vo);

	T get(T vo);

	List<T> list(T vo);
}
	