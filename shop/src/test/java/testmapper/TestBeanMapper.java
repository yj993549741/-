package testmapper;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.neuedu.shop.entity.CartItem;
import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.User;
import com.neuedu.shop.mapper.AdminMapper;
import com.neuedu.shop.mapper.ProductMapper;
import com.neuedu.shop.mapper.UserMapper;
import com.neuedu.shop.service.CartItemService;
/**
 * 使用JUnit单元测试，测试BeanMapper接口的实现
 * @author 樱桃小丸子
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:beans.xml")
public class TestBeanMapper {
	/**第1步：将JUnit4的.jar文件导入到pom.xml文件
	 * 第2步：在测试类上加上相应的注解
	 * 使用@RunWith注解：模拟启动服务器
	 * @RunWith(SpringJUnit4ClassRunner.class) 
	 * @ContextConfiguration：模拟启动服务器中使用Spring配置文件中的数据源
	 * @ContextConfiguration(locations="classpath:beans.xml")
	 * 第3步：待测试接口
	 * @Resource（将get/set方法均有）+私有权限private+XXXMapper+成员变量名mapper
	 * 第4步：待测试方法
	 * 1.在测试类中写一个方法，方法体里面写mapper.方法名
	 * 2.方法上面必须得加上@Test注解
	 * 3.然后选中方法名
	 * 4.右键-->RunAs-->JUnitTest
	 * 5.查看控制台Console里面获取到没数据
	 */
	/**
	 * 待测试接口
	 */
	@Resource
	private AdminMapper adminMapper;
	@Resource
	private UserMapper userMapper;
	@Resource
	private ProductMapper productMapper;
	@Resource
	private CartItemService itemService;
	/**
	 * 待测试方法
	 */
	@Test
	public void adminFindAll() {
		System.err.println(adminMapper.findAll());
	}
	@Test
	public void productInsert() {
		System.err.println("222");
	} 
	@Test
	public void lastProduct() {
		List<Product> lastProduct = productMapper.lastProduct(2);
		for (Product product : lastProduct) {
			System.err.println(product);
		}
			
		
		
	}
	@Test
	public void findByUsername() {
		User user = userMapper.findByUsername("小黑");
		System.err.println(user);
	}
	@Test
	public void addToCart() {
		CartItem ci = new CartItem();
		ci.setProductid(1);
		ci.setUserid(3);
		ci.setUnitprice(70.4);
		ci.setPcount(1);
		itemService.insert(ci);
	}
	 
}
