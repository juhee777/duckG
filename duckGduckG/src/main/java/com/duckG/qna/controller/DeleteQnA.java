package com.duckG.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;
import com.duckG.qna.mapper.QnAMapper;
import com.duckG.qna.service.QnAService;
import com.duckG.qna.service.QnAServiceImpl;

public class DeleteQnA implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		QnAService svc = new QnAServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		int qnaNo = Integer.parseInt(req.getParameter("qnaNo"));
		
		HttpSession session = req.getSession();
		String uid = (String)session.getAttribute("");
		
		resp.getWriter().print(svc.delQnA(qnaNo));
	}

}
