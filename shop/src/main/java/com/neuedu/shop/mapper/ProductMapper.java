package com.neuedu.shop.mapper;

import java.util.List;

import com.neuedu.shop.entity.Category;
import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.ProductConditionVO;

public interface ProductMapper {
	/**
	 * 查找所有商品
	 * 
	 */
	List<Product> findAll();
	/**
	 * 
	 * 通过ID查询
	 */
	Product findById(Integer id);
	/**
	 * 添加商品
	 */
	void insert(Product product);
	/**
	 * 修改商品
	 */
	void update(Product product);
	/**
	 * 通过id删除商品
	 */
	void delete(Integer id);
	/**
	 * 通过一定条件查询
	 * @param productCondition
	 * @return
	 */
	List<Product> findByCondition(ProductConditionVO productCondition);
	/**
	 * 最新商品
	 */
	List<Product> lastProduct(Integer pageNo);
	/**
	 * 推荐商品（猜你喜欢）
	 */
	List<Product> recommmendProduct(Category category);
}
