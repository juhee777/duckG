package com.duckG.order.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.duckG.Control;
import com.duckG.order.service.OrderService;
import com.duckG.order.service.OrderServiceImpl;
import com.duckG.vo.OrderVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class SelectOrder implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setContentType("text/json;charset=utf-8");
		
		String id = req.getParameter("userid");
		
		OrderService osv = new OrderServiceImpl();
		List<OrderVO> list = osv.OrderList(id);
		
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(list);
		
		resp.getWriter().print(json);
	
	}

}
