package com.neuedu.shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductConditionVO {
	
	/**
	 * 通过关键字查询
	 */
	private String keywords;
	/**
	 * 通过categoryid两表连接查询
	 */
	private Category category;
	/**
	 * 通过开始日期--结束日期查询
	 */
	private String startDate;
	private String endDate;
	/**
	 * 通过价格范围查询
	 */
	private Double lowPrice;
	private Double highPrice;
	
	
}
