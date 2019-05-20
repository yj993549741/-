package com.neuedu.shop.entity;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
/**
 * 用户类
 * @author 樱桃小丸子
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
	/**
	 * 用户ID
	 */
	private Integer id;
	/**
	 * 用户名
	 */
	private String username;
	/**
	 * 用户密码
	 */
	private String password;
	/**
	 * 用户手机号码
	 */
	private String phone;
	/**
	 * 用户地址
	 */
	private String addr;//List<Addr>||Addr[]
	/**
	 * 用户日期
	 */
	private Timestamp rdate;
	
}
