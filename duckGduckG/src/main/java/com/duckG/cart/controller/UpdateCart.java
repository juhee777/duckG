package com.duckG.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;

public class UpdateCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cno = req.getParameter("cno");

		CartService cso = new CartServiceImpl();

		CartVO cvo = new CartVO();
		cvo.setCartNo(Integer.parseInt(cno));
		cvo.setCount(Integer.parseInt(count));

		cso.updateCart((cvo));

		req.setAttribute("cartNo", cno);

		req.getRequestDispatcher("cart/cartForm.tiles").forward(req, resp);

	}

}
