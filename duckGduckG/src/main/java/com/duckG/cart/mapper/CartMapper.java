package com.duckG.cart.mapper;

import java.util.List;

import com.duckG.vo.CartVO;

public interface CartMapper {

	List<CartVO> cartList(String memberId);// 장바구니 목록

	int addCart(CartVO vco);// 장바구니 추가

	int deleteCart(int cartNo);// 장바구니 삭제

	int modifyCart(CartVO vco);// 장바구니 수량 수정

	int checkCart(CartVO vco);// 이미 장바구니에 담긴 상품인지 확인
	
	int checkUpdateCart(CartVO cvo); // 장바구니에 있으면 업테이트

}
