package com.neuedu.shop.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neuedu.shop.entity.CartItem;
import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.User;
import com.neuedu.shop.service.CartItemService;
import com.neuedu.shop.service.ProductService;
import com.neuedu.shop.service.UserService;
import com.neuedu.shop.util.ServletUtil;

@Controller
@RequestMapping("/pre")
public class PreController {
	@Resource
	private ProductService productService;
	@Resource
	private UserService userService;
	@Resource
	private CartItemService itemService;
	
	@RequestMapping("/lastProduct")
	public String lastProduct(Integer pageNo,ModelMap map) {
		//第一页
		List<Product> lastProduct1 = productService.lastProduct(1);
		//第二页
		List<Product> lastProduct2 = productService.lastProduct(2);
		//第三页
		List<Product> lastProduct3 = productService.lastProduct(3);
		System.err.println(lastProduct1);
		System.err.println(lastProduct2);
		System.err.println(lastProduct3);
		map.addAttribute("lastProduct1", lastProduct1);
		map.addAttribute("lastProduct2", lastProduct2);
		map.addAttribute("lastProduct3", lastProduct3);
		return "index.jsp";
	}
	/**
	 * 通过用户名登录
	 */
	@RequestMapping("/login")
	public String findByUsername(String username,String password,HttpSession session) {
		User user = userService.findByUsername(username);
		//如果用户名和密码相同，则进行session绑定
		if(user != null && password.equals(user.getPassword())) {
			System.err.println(password);
			System.err.println(user.getPassword());
			session.setAttribute("user", user);
			System.err.println("登录成功！");
			return "redirect:lastProduct.do";
		}else {
			System.err.println(password);
			System.err.println(ServletUtil.md5Password(password));
			System.err.println("登录失败！");
			return "redirect:login.jsp";
		}
	}
	/**
	 * 退出登录
	 * @param session
	 * @return
	 */
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:lastProduct.do";
	}
	/**
	 * 用户注册
	 * @param user
 	 * @return
	 */
	@RequestMapping("/register")
	public String insert(User user) {
		/*user.setPassword(ServletUtil.md5Password(user.getPassword()));*/
		userService.insert(user);
		return "redirect:login.jsp";
	}
	/**
	 * 不添加没有办法加入到购物车
	 * @param ci
	 * @param map
	 * @return
	 */
	@RequestMapping("/addToCart")
	public String addCartItem(CartItem ci,ModelMap map) {
		System.err.println(ci);
		itemService.insert(ci);
		return "ridirect:cart.do";
	}
	@RequestMapping("/cart")
	public String findAllCartItems(HttpSession session,ModelMap map) {
		User user = (User)session.getAttribute("user");
		System.err.println(user);
		List<CartItem> items = itemService.findByUserid(user.getId());
		map.addAttribute("items", items);
		return "checkout.jsp";
	}
	
}
