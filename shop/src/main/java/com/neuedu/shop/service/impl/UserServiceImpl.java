package com.neuedu.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neuedu.shop.entity.User;
import com.neuedu.shop.mapper.UserMapper;
import com.neuedu.shop.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	
	private UserMapper mapper;
	
	@Resource
	public void setMapper(UserMapper mapper) {
		this.mapper = mapper;
	}
	
	
	@Override
	public List<User> findAll() {
		return mapper.findAll();
	}


	@Override
	public void update(User user) {
		mapper.update(user);
	}


	@Override
	public User findById(Integer id) {
		return mapper.findById(id);
	}


	@Override
	public void delete(Integer id) {
		mapper.delete(id);
	}


	@Override
	public List<User> findByKeywords(String keywords) {
		return mapper.findByKeywords(keywords);
	}


	@Override
	public User findByUsername(String username) {
		return mapper.findByUsername(username);
	}


	@Override
	public void insert(User user) {
	/*	if(user.getAddr()!=""&&user.getAddr()!=null) {*/
			mapper.insert(user);
		//}
		
	}


	@Override
	public void register(User user) {
		
	}


	@Override
	public void logout(User user) {
		
	}

}
