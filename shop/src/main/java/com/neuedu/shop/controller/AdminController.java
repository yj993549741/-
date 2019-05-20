package com.neuedu.shop.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.neuedu.shop.entity.Admin;
import com.neuedu.shop.service.AdminService;
import com.neuedu.shop.util.ServletUtil;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	private AdminService service;
	
	@Resource
	public void setService(AdminService service) {
		this.service = service;
	}
	
	
	@RequestMapping("/findAll")
	public String findAll(ModelMap map) {
		List<Admin> admins = service.findAll();
		//System.err.println(admins); //测试的作用是看拿没拿到数据
		map.addAttribute("admins", admins);
		return "forward:admins.jsp";
	}
	/**
	 * AJAX异步请求
	 * 验证用户输入的原始密码与当前登录的管理员密码是否一致
	 */
	@RequestMapping("/registerpwd")
	@ResponseBody
	public String registerpwd(Integer id,String oldpwd) {
		Admin admin = service.findById(id);
		System.out.println(admin);
		//验证
		//验证成功
		if(ServletUtil.md5Password(oldpwd).equals(admin.getApwd())) {
			//返回信息
			try {
				return "right";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		//验证失败
		return "error";
	}
	@RequestMapping("/findById")
	public String findById(Integer id,ModelMap map) {
		Admin admin = service.findById(id);
		map.addAttribute("admin", admin);
		return "forward:update.jsp";
	}
	/**
	 * 修改以后的
	 * @param admin
	 * @return
	 */
	@RequestMapping("/update")
	public String update(Admin admin) {
		//System.err.println(admin);
		//验证业务
		service.update(admin);
		return "redirect:findAll.do";
	}
	/**
	 * 通过id删除管理员
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	public String delete(Integer id) {
		service.delete(id);
		//System.err.println("删除了id为"+id+"的这个管理员");
		return "redirect:findAll.do";
	}
	/**
	 * 
	 * @param admin
	 * @param map
	 * @return
	 */
	@RequestMapping("/insert")
	public String insert(Admin admin) {
		admin.setApwd(ServletUtil.md5Password(admin.getApwd()));
		service.insert(admin);
		return "redirect:findAll.do";
	}
}
