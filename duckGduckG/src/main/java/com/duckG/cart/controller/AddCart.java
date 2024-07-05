package com.duckG.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;

public class AddCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CartService svc = new CartServiceImpl();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");

		int productNo = Integer.parseInt(req.getParameter("productNo"));
		int count = Integer.parseInt(req.getParameter("count"));
		
		HttpSession session = req.getSession();
		String logId = (String)session.getAttribute("logId");
		
		CartVO cvo = new CartVO();
		cvo.setProductNo(productNo);
		cvo.setCount(count);
		cvo.setMemberId(logId);

		if(svc.checkCart(cvo)) {
			if(svc.addCart(cvo)) { //{'retCode": "OK", "retMsg": "Success"}
				resp.getWriter().print("{\"retCode\": \"OK\", \"retMsg\": \"Success\"}");
			}else { //{'retCode": "NG", "retMsg": "Fail"}
				resp.getWriter().print("{\"retCode\": \"NG\", \"retMsg\": \"Fail\"}");
			}			
		}else {
			if(svc.checkUpdateCart(cvo)) {
				resp.getWriter().print("{\"retCode\": \"OKUP\", \"retMsg\": \"Success\"}");			
			}else {
				resp.getWriter().print("{\"retCode\": \"NGUP\", \"retMsg\": \"Fail\"}");
			}
		}
		
	}

}
