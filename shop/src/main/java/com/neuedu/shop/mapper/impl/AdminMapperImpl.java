package com.neuedu.shop.mapper.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Admin;
import com.neuedu.shop.mapper.AdminMapper;

@Repository
public class AdminMapperImpl extends SqlSessionDaoSupport implements AdminMapper{
	
	@Resource
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	
	@Override
	public List<Admin> findAll() {
		return getSqlSession().getMapper(AdminMapper.class).findAll();
	}


	@Override
	public void update(Admin admin) {
		this.getSqlSession().getMapper(AdminMapper.class).update(admin);
	}


	@Override
	public Admin findById(Integer id) {
		return this.getSqlSession().getMapper(AdminMapper.class).findById(id);
	}


	@Override
	public void delete(Integer id) {
		this.getSqlSession().getMapper(AdminMapper.class).delete(id);
	}


	@Override
	public void insert(Admin admin) {
		this.getSqlSession().getMapper(AdminMapper.class).insert(admin);
		
	}
	
}
