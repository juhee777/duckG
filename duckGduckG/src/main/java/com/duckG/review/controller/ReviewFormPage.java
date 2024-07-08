package com.duckG.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.vo.ZzimDTO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class ReviewFormPage implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String page = req.getParameter("page");

		String totalCnt = req.getParameter("Cnt");

		ZzimDTO dto = new ZzimDTO(Integer.parseInt(page), Integer.parseInt(totalCnt));


		Gson gson = new GsonBuilder().create();
		resp.getWriter().print(gson.toJson(dto));
	}

}
