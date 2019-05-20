package com.neuedu.shop.service;

import java.util.List;

import com.neuedu.shop.entity.CartItem;

public interface CartItemService {
	
	void insert(CartItem ci);
	
	List<CartItem> findByUserid(Integer userid);
	
	void updatePcount(CartItem ci);
}
