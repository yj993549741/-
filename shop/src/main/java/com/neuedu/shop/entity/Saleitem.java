package com.neuedu.shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Saleitem {
	
	private Integer id;
	/**
	 * 商品
	 */
	 private Product product;
	 /**
	  * 下单价格（根据用户的VIP计算出来的实际价格）
	  */
	private Double unitprice;
	/**
	 * 下单的商品数量
	 */
	private Integer pcount;
	/**
	 * 订单号
	 */
	private SaleOrder saleorder;
	
}
