package com.neuedu.shop.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.ProductConditionVO;
import com.neuedu.shop.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	private ProductService service;
	@Resource
	public void setService(ProductService service) {
		this.service = service;
	}
	/**
	 * 查找所有商品
	 * @param map
	 * @return
	 */
	@RequestMapping("/findAll")
	public String findAll(ModelMap map) {
		List<Product> products = service.findAll();
		map.addAttribute("products", products);
		return "forward:products.jsp";
	}
	/**
	 * 添加新品
	 * @param product
	 * @param file
	 * @param request
	 * @return 
	 */
	@RequestMapping("/insert")
	public String insert(Product product,@RequestParam("file") CommonsMultipartFile file,HttpServletRequest request) {
		service.insert(product, file, request);
		return "redirect:findAll.do";
		
	}
	/**
	 * 复杂条件查询
	 * @param pvo
	 * @param map
	 * @return
	 */
	@RequestMapping("/findByCondition")
	public String findByCondition(ProductConditionVO pvo,ModelMap map) {
		List<Product> products = service.findByCondition(pvo);
		System.err.println(pvo);
		map.addAttribute("products",products);
		return "search_complete.jsp";
	}
	/**
	 * 先通过id找
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping("/findById")
	public String findById(Integer id,ModelMap map) {
		Product product = service.findById(id);
		map.addAttribute("product", product);
		return "forward:update.jsp";
	}
	/**
	 * 通过id删除商品
	 */
	@RequestMapping("/delete")
	public String delete(Integer id) {
		System.err.println("删除了");
		service.delete(id);
		return "redirect:findAll.do";
	}
}
