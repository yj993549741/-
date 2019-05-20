package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.entity.Category;

public interface CategoryService {
	List<Category> findAll();
	
	void insert(Category category);
	
	Category findById(Integer id);
	
	void insertCategoryChild(Category category);
	
	List<Category> findThree();
}
