package com.neuedu.shop.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem {
	private Integer id;
	private Integer productid;
	private Integer userid;
	private Integer pcount;
	private Double unitprice;
	private Timestamp itemdate;//加入购物车时间
}
