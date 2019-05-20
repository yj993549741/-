package com.neuedu.shop.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.shop.entity.Category;
import com.neuedu.shop.service.CategoryService;

@Controller
@RequestMapping("/category")
public class CategoryController {
	//1.定义service
	private CategoryService service;
	//2.service的set方法
	@Resource
	public void setService(CategoryService service) {
		this.service = service;
	}
	//3.定义自己的方法--->实现业务逻辑
	@RequestMapping("/findAll")
	public String findAll(ModelMap map) {
		//（1）service获取一堆categories
		List<Category> categories = service.findAll();
	  //  System.out.println(categories);
		//（2）map来绑定数据
		map.addAttribute("categories", categories);
		//（3）转发或者重定向
		return "forward:categories.jsp";
	}
	/**
	 * 	添加根类别
	 * @param category
	 * @return
	 */
	@RequestMapping("/insert")
	public String insert(Category category) {
		service.insert(category);
		return "redirect:findAll.do";
	}
	/**
	 * 1.
	 * @param id
	 * @param pid
	 * @return
	 */
	@RequestMapping("/findById")
	public String findById(Integer id, ModelMap map) {
		Category category = service.findById(id);
		map.addAttribute("category", category);
		return "forward:insert_child.jsp";
	}
	/**
	 * 2.真正添加子类别
	 * @param category
	 * @return
	 */
	@RequestMapping("/insertChild")
	public String insertChild(Category category) {
		service.insertCategoryChild(category);
		return "redirect:findAll.do";
	}
	/**
	 * 查找3级的
	 * @param category
	 * @return
	 */
	@RequestMapping("/findThree")
	@ResponseBody //这是一个AJAX
	public List<Category> findThree(){
		return service.findThree();
	}
}
