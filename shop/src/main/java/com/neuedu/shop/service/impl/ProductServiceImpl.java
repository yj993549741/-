package com.neuedu.shop.service.impl;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.neuedu.shop.entity.Category;
import com.neuedu.shop.entity.Product;
import com.neuedu.shop.entity.ProductConditionVO;
import com.neuedu.shop.mapper.ProductMapper;
import com.neuedu.shop.service.ProductService;
import com.neuedu.shop.util.ServletUtil;

@Service
public class ProductServiceImpl implements ProductService{
	
	private ProductMapper mapper;
	@Resource
	public void setMapper(ProductMapper mapper) {
		this.mapper = mapper;
	}
	@Override
	public List<Product> findAll() {
		return mapper.findAll();
	}

	@Override
	public Product findById(Integer id) {
		return mapper.findById(id);
	}

	

	@Override
	public void update(Product product) {
		mapper.update(product);
	}

	@Override
	public void delete(Integer id) {
		mapper.delete(id);
	}

	@Override
	public List<Product> findByCondition(ProductConditionVO productCondition) {
		return mapper.findByCondition(productCondition);
	}
	@Override
	public List<Product> recommmendProduct(Category category) {
		return mapper.recommmendProduct(category);
	}
	@Override
	public List<Product> lastProduct(Integer pageNo) {
		return mapper.lastProduct(pageNo);
	}
	@Override
	public void insert(Product product, CommonsMultipartFile file, HttpServletRequest request) {
		try {
			String path = request.getServletContext().getRealPath("/") + "/img/"
			+ UUID.randomUUID().toString().replaceAll("-", "") + file.getOriginalFilename();
			//创建文件
			File f = new File(path);
			System.err.println(path);
			File fileParent = f.getParentFile();
			//判断fileParent下是否有文件夹 没有就创建
			if(!fileParent.exists()) {
				fileParent.mkdirs();
			}
			try {
				//上传文件
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			//保存数据库的路径
			String imgPath = null;
			//把图片的相对路径保存到数据库
			imgPath = "/img" + path.substring(path.lastIndexOf("/"));
			product.setImgPath(imgPath);
			System.err.println(imgPath);
			mapper.insert(product);
			//3.存到Eclipse路径下---到----文件拷贝
			ServletUtil.fileCopyToLocal(f, new File("E:\\neuedu\\project\\eclipse\\shop\\src\\main\\webapp"+imgPath));
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	

}
