package com.duckG.qna.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.qna.service.QnAService;
import com.duckG.qna.service.QnAServiceImpl;
import com.duckG.vo.QnAVO;

public class UpdateQnA implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		QnAService svc = new QnAServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		int qnaNo = Integer.parseInt(req.getParameter("qnaNo"));		
		String QAnswer = req.getParameter("QAnswer");
		
		QnAVO qvo = new QnAVO();
		
		qvo.setQnaNo(qnaNo);
		qvo.setQnaAnswer(QAnswer);
		
		svc.updateQnA(qvo);
	}

}
