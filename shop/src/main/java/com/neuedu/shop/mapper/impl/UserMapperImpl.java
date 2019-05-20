package com.neuedu.shop.mapper.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.User;
import com.neuedu.shop.mapper.UserMapper;
@Repository
public class UserMapperImpl extends SqlSessionDaoSupport implements UserMapper {
	
	@Resource
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	@Override
	public List<User> findAll() {
		return getSqlSession().getMapper(UserMapper.class).findAll();
	}

	@Override
	public void update(User user) {
		this.getSqlSession().getMapper(UserMapper.class).update(user);
	}

	@Override
	public User findById(Integer id) {
		
		return getSqlSession().getMapper(UserMapper.class).findById(id);
	}

	@Override
	public void delete(Integer id) {
		this.getSqlSession().getMapper(UserMapper.class).delete(id);
	}

	@Override
	public List<User> findByKeywords(String keywords) {
		return getSqlSession().getMapper(UserMapper.class).findByKeywords(keywords);
	}

	@Override
	public User findByUsername(String username) {
		return getSqlSession().getMapper(UserMapper.class).findByUsername(username);
	}

	@Override
	public void insert(User user) {
		getSqlSession().getMapper(UserMapper.class).insert(user);
	}

}
