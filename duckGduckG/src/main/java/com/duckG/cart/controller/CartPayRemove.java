package com.duckG.cart.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class CartPayRemove implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String logId = (String)session.getAttribute("logId");
		
		CartService csvc = new CartServiceImpl();
		Map<String, String> map = new HashMap<String, String>();
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		
		try {
			if(csvc.emptyCart(logId) > 0) {
				map.put("result", "OK");
				map.put("msg", "성공");
				resp.getWriter().print(gson.toJson(map));
			}
		} catch (Exception e) {
			e.printStackTrace();

			map.put("result", "NG");
			map.put("msg", "실패");
			resp.getWriter().print(gson.toJson(map));
		}

	}

}
