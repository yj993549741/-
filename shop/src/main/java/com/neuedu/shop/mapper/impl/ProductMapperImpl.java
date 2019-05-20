package com.neuedu.shop.mapper.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Category;
import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.ProductConditionVO;
import com.neuedu.shop.mapper.ProductMapper;
@Repository
public class ProductMapperImpl extends SqlSessionDaoSupport implements ProductMapper{
	@Resource
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	@Override
	public List<Product> findAll() {
		return getSqlSession().getMapper(ProductMapper.class).findAll();
	}

	@Override
	public Product findById(Integer id) {
		return getSqlSession().getMapper(ProductMapper.class).findById(id);
	}

	@Override
	public void insert(Product product) {
		this.getSqlSession().getMapper(ProductMapper.class).insert(product);
	}

	@Override
	public void update(Product product) {
		this.getSqlSession().getMapper(ProductMapper.class).update(product);
	}

	@Override
	public void delete(Integer id) {
		this.getSqlSession().getMapper(ProductMapper.class).delete(id);
	}

	@Override
	public List<Product> findByCondition(ProductConditionVO productCondition) {
		return getSqlSession().getMapper(ProductMapper.class).findByCondition(productCondition);
	}
	@Override
	public List<Product> lastProduct(Integer pageNo) {
		return getSqlSession().getMapper(ProductMapper.class).lastProduct((pageNo-1) * 1);
	}
	@Override
	public List<Product> recommmendProduct(Category category) {
		return getSqlSession().getMapper(ProductMapper.class).recommmendProduct(category);
	}

}
