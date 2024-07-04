package com.duckG.jjim.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.jjim.service.JjimService;
import com.duckG.jjim.service.JjimServiceImpl;
import com.duckG.vo.JjimVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class SelectJjim implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		JjimService svc = new JjimServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");

		int productNo = Integer.parseInt(req.getParameter("productNo"));

		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");

		JjimVO jvo = new JjimVO();

		jvo.setMemberId(uid);
		jvo.setProductNo(productNo);	
		
		
		try {
			if (svc.jjimList(jvo)) { // {"retCod":"OK","retMsg":"Success"}
				resp.getWriter().print("{\"retCod\":\"NO\",\"retMsg\":\"Success\"}");
			} else { // {"retCod":"NG","retMsg":"Fail"}
				resp.getWriter().print("{\"retCode\": \"YES\"}");
			}
		} catch (Exception e) {
			// TODO: handle exception
			resp.getWriter().print("{\"retCode\": \"NG\"}");
		}
		


	}

}
