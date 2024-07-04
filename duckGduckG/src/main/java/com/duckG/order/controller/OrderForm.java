package com.duckG.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;

public class OrderForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		session.getAttribute("logId");
		
		req.setAttribute("orderNo", req.getParameter("orderNo"));
		
		
		req.getRequestDispatcher("MyInfo/OrderDetails.tiles").forward(req, resp);
	}

}
