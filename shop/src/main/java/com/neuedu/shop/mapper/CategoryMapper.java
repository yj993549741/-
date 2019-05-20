package com.neuedu.shop.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.neuedu.shop.entity.Category;

public interface CategoryMapper {
	/**
	 * 返回树状列表   findToTree();
	 * @return
	 */
	List<Category> findAll();
	/**
	 * 添加根类别
	 */
	void insert(Category category);
	/**
	 * 通过id找自己
	 */
	Category findById(Integer id);
	/**
	 * 通过pid找父亲
	 */
	Category findByPid(Integer pid);
	/**
	 * 添加子类别
	 */
	void insertChild(Category category);
	/**
	 * 修改父节点id或者子节点的pid
	 */
	void updateParentLeaf(Integer pid);
	/**
	 * 查找三级类别名称
	 */
	List<Category> findThree();
}
