package com.duckG.jjim.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.jjim.service.JjimService;
import com.duckG.jjim.service.JjimServiceImpl;
import com.duckG.vo.QnAVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class UpdateJjim implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		JjimService svc = new JjimServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");
		
		int total = svc.jjimTotal(uid);

		Gson gson = new GsonBuilder().create();

		resp.getWriter().print(gson.toJson(total));
	}

}
