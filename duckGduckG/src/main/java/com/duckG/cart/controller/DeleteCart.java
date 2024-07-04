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
		resp.setContentType(null);
		String cno = req.getParameter("cartNo");

		CartService cso = new CartServiceImpl();

		Map<String, String> map = new HashMap<>();
		//list<string> list ~~;
		Gson gson = new GsonBuilder().create();

		try {
			if (cso.deleteCart(Integer.parseInt(cno))) {
				map.put("retCode", "OK");
				map.put("retMsg", "상품이 성공적으로 삭제되었습니다.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("retCode", "NG");
			map.put("retMsg", "상품 삭제중 오류가 발생했습니다.");
			//map.put("plist", list);
		} finally {
			String json = gson.toJson(map);
			resp.getWriter().print(json);
		}
	}
}
