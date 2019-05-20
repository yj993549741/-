package com.neuedu.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.neuedu.shop.entity.Admin;
import com.neuedu.shop.mapper.AdminMapper;
import com.neuedu.shop.service.AdminService;

@Service 
public class AdminServiceImpl implements AdminService{
	
	private AdminMapper mapper;
	
	@Resource
	public void setMapper(AdminMapper mapper) {
		this.mapper = mapper;
	}
	
	@Override
	public List<Admin> findAll() {
		//System.out.println("实现业务逻辑");
		return mapper.findAll();
	}

	@Override
	public void update(Admin admin) {
		mapper.update(admin);
		
	}

	@Override
	public Admin findById(Integer id) {
		
		return mapper.findById(id);
	}

	@Override
	public void delete(Integer id) {
		
		 mapper.delete(id);
	}

	@Override
	public void insert(Admin admin) {
		mapper.insert(admin);
	}
	
}
