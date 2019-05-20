package com.neuedu.shop.mapper.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Category;
import com.neuedu.shop.mapper.CategoryMapper;

@Repository
public class CategoryMapperImpl extends SqlSessionDaoSupport implements CategoryMapper {
	
	//1.获得SqlSession
	@Resource
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public List<Category> findAll() {
		//2.接口注册
		return getSqlSession().getMapper(CategoryMapper.class).findAll();
	}
	@Override
	public void insert(Category category) {
		this.getSqlSession().getMapper(CategoryMapper.class).insert(category);
	}

	@Override
	public Category findById(Integer id) {
		return getSqlSession().getMapper(CategoryMapper.class).findById(id);
	}

	@Override
	public void insertChild(Category category) {
		this.getSqlSession().getMapper(CategoryMapper.class).insertChild(category);
	}

	@Override
	public void updateParentLeaf(Integer pid) {
		this.getSqlSession().getMapper(CategoryMapper.class).updateParentLeaf(pid);
	}

	@Override
	public Category findByPid(Integer pid) {
		return getSqlSession().getMapper(CategoryMapper.class).findByPid(pid);
	}

	@Override
	public List<Category> findThree() {
		return getSqlSession().getMapper(CategoryMapper.class).findThree();
	}

}
