package com.neuedu.shop.mapper;

import java.util.List;

import com.neuedu.shop.entity.CartItem;

public interface CartItemMapper {
	/**
	 * 向购物车中加入购物项
	 * @param ci
	 */
	void insert(CartItem ci);
	
	List<CartItem> findByUserid(Integer userid);

	void updatePcount(CartItem ci);
}
