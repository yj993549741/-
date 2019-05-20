package com.neuedu.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neuedu.shop.entity.Category;
import com.neuedu.shop.mapper.CategoryMapper;
import com.neuedu.shop.service.CategoryService;
@Service
public class CategoryServiceImpl implements CategoryService{
	
	//1.定义mapper
	private CategoryMapper mapper;
	//2.mapper的set方法
	@Resource
	public void serMapper(CategoryMapper mapper) {
		this.mapper = mapper ;
	}
	@Override
	public List<Category> findAll() {
		return mapper.findAll();
	}
	@Override
	public void insert(Category category) {
		mapper.insert(category);
	}
	@Override
	public Category findById(Integer id) {
		return mapper.findById(id);
	}
	/**
	 * id在id=1的数据下添加子类别
	 * pid=1
	 */
	@Override
	public void insertCategoryChild(Category category) {
		//mapper.insertChild(category);
		
		//1.查询该类别的符级别的grade
		Category cParent = mapper.findById(category.getPid());
		int childGrade = cParent.getGrade()+1;
		//2.添加新节点
		category.setGrade(childGrade);
		System.err.println("Service中的："+category);
		mapper.insertChild(category);
		//3.修改父节点的叶子节点为false
		mapper.updateParentLeaf(category.getPid());
	}
	@Override
	public List<Category> findThree() {
		return mapper.findThree();
	}
	
}
