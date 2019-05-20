package com.neuedu.shop.entity;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 商品类别
 * 商品类别的级别默认到三级截止，并且只能在类别级别三级下添加商品
 * @author 樱桃小丸子
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Category {
	/**
	 * 商品类别ID
	 */
	private Integer id;
	/**
	 * 商品类别名称
	 */
	private String name;
	/**
	 * 商品类别描述
	 */
	private String descr;
	/**
	 * 父级别是否是叶子节点
	 */
	private Integer pid;
	/**
	 * 是否为叶子节点
	 */
	private boolean leaf;
	/**
	 *商品类别 级别[1,3]（只有1,2,3个数字）
	 */
	private Integer grade;
	/**
	 * 用来存放每次递归查询到的结果
	 */
	private List<Category> children;
	/**
	 * 添加根类别或者子类别，只需要添加类别名称和类别描述
	 * @param name
	 * @param descr
	 */
	public Category(String name,String descr) {
		this.name = name;
		this.descr = descr;
	}
}
