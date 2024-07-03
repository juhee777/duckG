package com.duckG.jjim.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.jjim.service.JjimService;
import com.duckG.jjim.service.JjimServiceImpl;
import com.duckG.qna.service.QnAService;
import com.duckG.qna.service.QnAServiceImpl;

public class SelectJjim implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		JjimService svc = new JjimServiceImpl();		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		

	}

}
