package com.duckG.cart.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class DeleteCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cno = req.getParameter("cno");
		
		CartService cso = new CartServiceImpl();
		
		Map<String, String> map = new HashMap<>();
		
		Gson gson = new GsonBuilder().create();
		
		
		
	

	}

}
