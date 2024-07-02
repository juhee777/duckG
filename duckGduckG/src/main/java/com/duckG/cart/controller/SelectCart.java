package com.duckG.cart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;
import com.duckG.vo.CartVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class SelectCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/json;charset=utf-8");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("logId");
		
		try {
			if(id != null){
				CartService cso = new CartServiceImpl();
				ProductService pso = new ProductServiceImpl();
				
				List<CartVO> cartTbody = cso.cartList(id);
								
				Gson gson = new GsonBuilder().setPrettyPrinting().create();
				String json = gson.toJson(cartTbody);
				resp.getWriter().print(json);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			resp.getWriter().print("{\"retCode\":\"NO\"}");
		}
		
	}
}
