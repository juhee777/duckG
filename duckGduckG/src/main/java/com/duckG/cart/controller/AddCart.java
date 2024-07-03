package com.duckG.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;

public class AddCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CartService svc = new CartServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");

		int productNo = Integer.parseInt(req.getParameter("productNo"));
		int count = Integer.parseInt(req.getParameter("count"));
		String memberId = req.getParameter("memberId");

		CartVO cvo = new CartVO();
		cvo.setProductNo(productNo);
		cvo.setCount(count);
		cvo.setMemberId(memberId);

		svc.addCart(cvo);
	}

}
