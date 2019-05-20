package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.entity.Admin;

public interface AdminService {
	/**
	 * 查找所有的管理员
	 * @return
	 */
	public List<Admin> findAll(); 
	/**
	 * 修改管理员
	 * @param admin
	 */
	public void update(Admin admin);
	/**
	 * 通过id查找管理员
	 */
	public Admin findById(Integer id);
	/**
	 * 通过Id删除管理员
	 */
	void delete(Integer id);
	/**
	 * 添加管理员
	 */
	void insert(Admin admin);
}
