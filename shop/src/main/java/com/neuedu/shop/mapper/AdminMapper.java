package com.neuedu.shop.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Admin;

public interface AdminMapper {
	/**
	 * 查找所有的管理员
	 * @return
	 */
	List<Admin> findAll(); 
	/**
	 * 修改管理员
	 * @param admin
	 */
	void update(Admin admin);
	/**
	 * 通过id查找管理员
	 */
	Admin findById(Integer id);
	/**
	 * 删除管理员
	 */
	void delete(Integer id);
	/**
	 * 添加管理员
	 */
	void insert(Admin admin);
}
