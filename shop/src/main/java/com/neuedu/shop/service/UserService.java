package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.entity.Admin;
import com.neuedu.shop.entity.User;

public interface UserService {
	/**
	 * 查找所有的用户
	 * @return
	 */
	List<User> findAll(); 
	/**
	 * 修改用户
	 * @param user
	 */
	public void update(User user);
	/**
	 * 通过id查找用户
	 */
	User findById(Integer id);
	/**
	 * 通过id删除用户
	 */
	void delete(Integer id);
	/**
	 * 通过关键词查询
	 */
	List<User> findByKeywords(String keywords);
	/**
	 * 通过用户名查找
	 */
	User findByUsername(String username);
	/**
	 * 添加用户
	 */
	void insert(User user);
	/**
	 * 用户注册
	 */
	public void register(User user);
	/**
	 * 用户退出
	 */
	public void logout(User user);
}
