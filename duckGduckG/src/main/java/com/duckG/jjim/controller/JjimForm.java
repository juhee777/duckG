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
import com.duckG.vo.JjimVO;

public class JjimForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		JjimService svc = new JjimServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");

		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");

		List<JjimVO> list = svc.selectJjim(uid);

		req.setAttribute("jjim", list);
		
		req.getRequestDispatcher("jjim/jjimForm.tiles").forward(req, resp);
	}
}
