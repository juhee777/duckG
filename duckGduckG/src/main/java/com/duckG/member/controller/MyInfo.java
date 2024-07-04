package com.duckG.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.order.service.OrderService;
import com.duckG.order.service.OrderServiceImpl;
import com.duckG.vo.OrderVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class MyInfo implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		session.getAttribute("logId");
		
		req.getRequestDispatcher("MyInfo/MyInfo.tiles").forward(req, resp);

	}

}
