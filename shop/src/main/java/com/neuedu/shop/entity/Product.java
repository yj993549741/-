package com.neuedu.shop.entity;


import org.springframework.web.multipart.MultipartFile;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 商品
 * @author 樱桃小丸子
 *
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Product {
	/**
	 * 商品ID
	 */
	private Integer id;
	/**
	 * 商品名称
	 */
	private String name;
	/**
	 * 商品描述
	 */
	private String descr;
	/**
	 * 生产日期
	 */
	private String pdate;
	/**
	 * 商品正常价格
	 */
	private double normalprice;
	/**
	 * 商品会员价格
	 */
	private double memberprice;
	/**
	 * 商品所属类别
	 */
	private Category category;
	/**
	 * 图片相对于服务器的路径
	 * 在实际项目中，会有专门的服务器只存资源
	 */
	private String imgPath;
	/**
	 * 文件上传
	 */
	private MultipartFile file;
	/**
	 * 类别id
	 */
	private Integer categoryid;
}
