package com.mystudy.shop;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	private List<ProductVO> list; // 카트에 담긴 제품 목록
	private int total; // 카트에 담긴 제품 가격 합계

	public Cart() {
		list = new ArrayList<ProductVO>();
		System.out.println(":: 카트(장바구니) 생성~~~");
	}

	// 카트 제품이 있는지 확인(있으면: VO리턴, 없으면: null 리턴)
	public ProductVO findProduct(String pnum) {
		for (ProductVO pvo : list) {
			if (pvo.getPnum().equals(pnum)) {
				return pvo;
			}
		}
		return null;
	}


	//장바구니에 담기 요청 처리기능(카트에 제품 추가) 
	public void addProduct(String pnum, ProductDAO dao) {
		ProductVO pvo = findProduct(pnum);
		//System.out.println("찾은결과 : " + pvo);
		
		if (pvo == null) { //카트에 없음 : 제품을 카트에 등록
			pvo = dao.selectOne(pnum);
			pvo.setCount(1); //수량, 수량별금액 변경처리
			list.add(pvo);
			total += pvo.getSaleprice();
			//System.out.println("새로추가후 : " + list);
		} else { //카트에 있음 : 수량만 1 증가 처리
			pvo.setCount(pvo.getCount() + 1);
			total += pvo.getSaleprice();
			//System.out.println("1개증가후 : " + list);
		}
	}


	// 장바구니 제품 수량 변경 처리기능
	public void editCount(String pnum, int count) {
		ProductVO vo = findProduct(pnum);
		System.out.println("수정전 : " + list);

		if (vo != null) {
			// 총합계에서 이전 금액 제거
			total -= vo.getSaleprice() * vo.getCount();

			// 새 수량 적용
			vo.setCount(count);

			// 총합계에 새로운 금액 반영
			total += vo.getSaleprice() * count;

			System.out.println("수정후 : " + list);
		}
	}

	

	// 장바구니 제품 삭제 처리기능
	public void deleteProduct(String pnum) {
		ProductVO vo = findProduct(pnum);
		System.out.println("삭제전 : " + list);
		
		if (vo != null) {
			total -= vo.getPrice() * vo.getCount(); 
			list.remove(vo); // 목록에서 삭제
			System.out.println("삭제후 : " + list);
		}
	}


	public List<ProductVO> getList() {
		return list;
	}

	public int getTotal() {
		int sum = 0;
		for (ProductVO vo : list) {
			sum += vo.getSaleprice() * vo.getCount(); 
		}
		return sum;
	}


}
