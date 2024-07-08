package com.duckG.review.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.review.service.ReviewService;
import com.duckG.review.service.ReviewServiceImpl;
import com.duckG.vo.ReviewVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class ReviewForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		String page = req.getParameter("page");
		
		page = page == null ? "1" :page;
		
		ReviewService svc = new ReviewServiceImpl();		

		int productNo = Integer.parseInt(req.getParameter("productNo"));
		
		List<ReviewVO> listPage = svc.selectReviewPage(productNo, Integer.parseInt(page));

		Gson gson = new GsonBuilder().create();

		resp.getWriter().print(gson.toJson(listPage));

	}

}
