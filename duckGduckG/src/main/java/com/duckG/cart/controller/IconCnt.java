package com.duckG.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class IconCnt implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		CartService svc = new CartServiceImpl();
		
		HttpSession session = req.getSession();
		String memberId = (String) session.getAttribute("logId");
		
		CartVO cvo = new CartVO();
		
		cvo.setMemberId(memberId);
		
		Gson gson = new GsonBuilder().create();
		
		svc.iconCnt(cvo);
	}
}
