package com.neuedu.shop.mapper.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.CartItem;
import com.neuedu.shop.mapper.CartItemMapper;
@Repository
public class CartItemMapperImpl extends SqlSessionDaoSupport implements CartItemMapper {
	@Resource
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public void insert(CartItem ci) {
		getSqlSession().getMapper(CartItemMapper.class).insert(ci);
	}
	@Override
	public List<CartItem> findByUserid(Integer userid) {
		return getSqlSession().getMapper(CartItemMapper.class).findByUserid(userid);
	}
	@Override
	public void updatePcount(CartItem ci) {
		getSqlSession().getMapper(CartItemMapper.class).updatePcount(ci);
	}

}
