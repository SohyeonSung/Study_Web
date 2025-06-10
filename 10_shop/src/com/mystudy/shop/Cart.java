package com.mystudy.shop;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<ProductVO> list; // 카트에 담긴 목록
	private int total; // 카트에 담긴 제품 합계 금액
	
	public Cart() {
		list = new ArrayList<ProductVO>();
		System.out.println(":: 카트(장바구니) 생성 ");
	}
	
	// 장바구니에 있는지 확인 기능
	
	// 장바구니에 담기 요청 처리 기능
	
	// 장바구니 제품 수량 변경 처리 기능
	
	// 장바구니 제품 삭제 처리 기능
	
	public List<ProductVO> getList() {
		return list;
	}

	public int getTotal() {
		return total;
	}
	
}
