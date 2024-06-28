package com.duckG.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;

public class ProductDetailForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		int productNo = Integer.parseInt(req.getParameter("productNo"));
		
		req.setAttribute("productNo", productNo);

		req.getRequestDispatcher("product/productDetailForm.tiles").forward(req, resp);
	}

}
