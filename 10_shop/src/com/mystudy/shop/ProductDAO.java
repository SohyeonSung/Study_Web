package com.mystudy.shop;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ProductDAO {

	public ProductDAO() {
		System.out.println(">> ProductDAO() 객체 생성");
	}

	public List<ProductVO> list(String category) {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			return ss.selectList("shop.list", category);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
