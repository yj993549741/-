package com.neuedu.shop.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/**
 * 管理员类
 * @author 樱桃小丸子
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Admin {
	/**
	 * 管理员ID
	 */
	private Integer id;
	/**
	 * 管理员名称
	 */
	private String aname;
	/**
	 * 管理员密码
	 */
	private String apwd;
}
