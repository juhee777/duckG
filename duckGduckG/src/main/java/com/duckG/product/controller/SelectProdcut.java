package com.duckG.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;
import com.duckG.vo.ProductVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class SelectProdcut implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductService svc = new ProductServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");

		int productNo = Integer.parseInt(req.getParameter("productNo"));

		List<ProductVO> list = svc.productDetail(productNo);

		Gson gson = new GsonBuilder().create();

		resp.getWriter().print(gson.toJson(list));
	}

}
