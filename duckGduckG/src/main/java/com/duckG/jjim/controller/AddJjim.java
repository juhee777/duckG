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

public class AddJjim implements Control {

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
		
		
		
		svc.addJjim(jvo);		
	}

}
