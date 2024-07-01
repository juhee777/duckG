package com.duckG.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.qna.service.QnAService;
import com.duckG.qna.service.QnAServiceImpl;
import com.duckG.vo.QnAVO;

public class AddQnA implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		QnAService svc = new QnAServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		int productNo = Integer.parseInt(req.getParameter("productNo"));
		String qnaContent = req.getParameter("qnaContent");
		String qnaTitle = req.getParameter("qnaTitle");
		
		QnAVO qvo = new QnAVO();
		
		qvo.setProductNo(productNo);
		qvo.setQnaContent(qnaContent);
		qvo.setQnaTitle(qnaTitle);
		qvo.setMemberId("user01");
		
		svc.addQnA(qvo);		

	}

}
