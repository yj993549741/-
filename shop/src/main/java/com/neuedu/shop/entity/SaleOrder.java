package com.neuedu.shop.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class SaleOrder {
	
	/**
	 * 订单号
	 */
	private Integer id;
	/**
	 * 用户下单
	 */
	private User user;
	/**
	 * 下单日期
	 */
	private Timestamp odate;
	/**
	 * 根据用户的默认地址确定的收货地址
	 */
	private String addr;//User.getAddr()
	/**
	 * 订单状态（0表示未发货。1表示已发货，2表示订单错误）
	 */
	private Integer status;
}
