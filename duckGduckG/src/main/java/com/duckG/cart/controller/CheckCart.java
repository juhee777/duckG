package com.duckG.cart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;

public class CheckCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/json;charset=UTF-8");
		
		CartService svc = new CartServiceImpl();
		CartVO cvo = new CartVO();
		
		String productNo = req.getParameter("productNo");
		String memberId = req.getParameter("memberId");
		String count = req.getParameter("cnt");
		
		
		cvo.setMemberId(memberId);
		cvo.setProductNo(Integer.parseInt(productNo));
		cvo.setCount(Integer.parseInt(count));
		
		
	
		if(memberId == null || memberId == "") {
			svc.addCart(cvo);
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('로그인 하세요');</script>");
			out.flush();
		    resp.flushBuffer();
		    out.close();

		}
		
		if(svc.updateCart(cvo)) {
			resp.sendRedirect("updateCart.do");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('장바구니를 업데이트 했습니다');</script>");
		}else if(svc.addCart(cvo)) {
			resp.sendRedirect("addCart.do");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('장바구니에 추가 했습니다');</script>");
		}
		
		

	}

}
