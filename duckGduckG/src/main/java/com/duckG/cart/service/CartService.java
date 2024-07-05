package com.duckG.cart.service;

import java.util.List;

import com.duckG.vo.CartVO;

public interface CartService {

	List<CartVO> cartList(String memberId);


	boolean addCart(CartVO cvo);

	boolean deleteCart(int cartNo);

	boolean updateCart(CartVO cvo);

	boolean checkCart(CartVO cvo);
	
	boolean checkUpdateCart(CartVO cvo);
	
	int iconCnt(String memberId);

}
