package com.neuedu.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.neuedu.shop.entity.CartItem;
import com.neuedu.shop.mapper.CartItemMapper;
import com.neuedu.shop.service.CartItemService;

@Service
public class CartItemServiceImpl implements CartItemService {
	
	private CartItemMapper mapper;
	@Resource
	public void setMapper(CartItemMapper mapper) {
		this.mapper = mapper;
	}
	@Override
	public void insert(CartItem ci) {
		//谁的购物车
		List<CartItem> items = findByUserid(ci.getUserid());
		for(int i=0;i<items.size();i++) {
			CartItem item = items.get(0);
			//同一种商品
			if(item.getProductid().equals(ci.getProductid())) {
				//合并
				updatePcount(item);
				return;
			}
		}
		
		mapper.insert(ci);
	}
	@Override
	public List<CartItem> findByUserid(Integer userid) {
		return mapper.findByUserid(userid);
	}
	@Override
	public void updatePcount(CartItem ci) {
		mapper.updatePcount(ci);
	}

}
