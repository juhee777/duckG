package com.duckG.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;

public class CheckCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = "admin";
		int pn = 1;
		
		CartService svc = new CartServiceImpl();
		CartVO cvo = new CartVO();
		
		cvo.setMemberId(id);
		cvo.setProductNo(pn);
		
		System.out.println(svc.checkCart(pn, id));
		
		
		

	}

}
