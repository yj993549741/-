package com.neuedu.shop.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.shop.entity.Admin;
import com.neuedu.shop.entity.User;
import com.neuedu.shop.service.UserService;
import com.neuedu.shop.util.ServletUtil;

@Controller
@RequestMapping(path="/user")
public class UserController {
	
	private UserService service;
	@Resource
	public void setService(UserService service) {
		this.service = service;
	}
	/**
	 * 定义自己的方法:查找所有用户们
	 * @param map
	 * @return
	 */
	@RequestMapping(path="/findAll")
	public String findAll(ModelMap map) {
		List<User> users = service.findAll();
	//	System.out.println(users);
		map.addAttribute("users", users);
		return "forward:users.jsp";
	}
	/**
	 * 通过id查找用户
	 * @param id
	 * @return
	 */
	@RequestMapping("/findById")
	public String findById(Integer id,ModelMap map) {
		User user = service.findById(id);
		map.addAttribute("user", user);
		return "forward:details.jsp";
	}
	/**
	 * 通过用户名查找用户的详情信息
	 */
	/*@RequestMapping("/findByUsername")
	public String findByUsername(String username,ModelMap map) {
		User user = service.findByUsername(username);
		System.err.println(user);
		map.addAttribute("user", user);
		return "forward:details.jsp";
	}*/
	/**
	 * 修改用户
	 * @param user
	 * @return
	 */
	@RequestMapping("/update")
	public String update(User user) {
		service.update(user);
		return "redirect:findAll.do";
	}
	/**
	 * 通过id删除用户
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Integer id) {
		service.delete(id);
		return "redirect:findAll.do";
	}
	/**
	 * 通过关键词搜索
	 * @param keywords
	 * @param map
	 * @return
	 */
	@RequestMapping("/findByKeywords")
	public String findByKeywords(String keywords,ModelMap map) {
		List<User> users = service.findByKeywords(keywords);
		//System.err.println(users);
		map.addAttribute("users", users);
		return "forward:search_user.jsp";
	}
	@RequestMapping("/insert")
	public String insert(User user) {
		user.setPassword(ServletUtil.md5Password(user.getPassword()));
		service.insert(user);
		return "redirect:findAll.do";
	}
	
}
