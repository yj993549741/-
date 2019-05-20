package com.neuedu.shop.test;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class TestAdminMapper {
	public static void main(String[] args) {
		SqlSession session = getSqlSession();
		System.out.println(session);
	}
	/**
	 * 获取SQLSession对象
	 */
	public static SqlSession getSqlSession() {
		InputStream inputStream =null;
		SqlSessionFactory sqlSessionFactory =null;
		SqlSession session =null;
		try {
			 inputStream = Resources.getResourceAsStream("mybatis.cfg.xml");
		     sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			 session = sqlSessionFactory.openSession();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return session;
	
}
}
