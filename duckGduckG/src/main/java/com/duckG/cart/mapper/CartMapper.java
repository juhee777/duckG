package com.duckG.cart.mapper;

import java.util.List;

import com.duckG.vo.CartVO;

public interface CartMapper {

	List<CartVO> cartList(String memberId);
	int insertCart(CartVO vco);
	int deleteCart(int cartNo);
	int modifyCart(CartVO vco);
	
}
