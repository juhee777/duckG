package com.duckG.product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.vo.SearchVO;

public class ProductForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String kw = req.getParameter("keyword");
		
		req.setAttribute("seach", kw);
		
		req.getRequestDispatcher("search/productForm.tiles").forward(req, resp);
	}

}
