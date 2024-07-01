package com.duckG.qna.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.qna.service.QnAService;
import com.duckG.qna.service.QnAServiceImpl;
import com.duckG.vo.QnAVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class SelectQnA implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		QnAService svc = new QnAServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");

		int productNo = Integer.parseInt(req.getParameter("productNo"));

		List<QnAVO> list = svc.selectQnA(productNo);

		Gson gson = new GsonBuilder().create();

		resp.getWriter().print(gson.toJson(list));

	}

}
