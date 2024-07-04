package com.duckG.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;

public class ChangePw implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		session.getAttribute("logId");
		
		req.getRequestDispatcher("MyInfo/ChangePw.tiles").forward(req, resp);

	}

}
