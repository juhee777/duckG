package com.duckG.cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.vo.MemberVO;

public class SelectCart implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		resp.setContentType("text/json;charset=utf-8");
//		
//		String id = req.getParameter("memberId");
//		
//		if(id != null){
//			CartService cso = new CartServiceImpl();
//			
//			List<CartVO> list = cso.cartList(id);
//			
//			Gson gson = new GsonBuilder().setPrettyPrinting().create();
//			String json = gson.toJson(list);
//			resp.getWriter().print(json);
//		} else {
//			System.out.println("로그인 후 이용가능");
//			resp.sendRedirect("loginForm.do");
//		}
		
		
		HttpSession session = req.getSession();
		
		MemberVO mvo = (MemberVO)session.getAttribute("member");
		
		if(mvo == null) {
			resp.sendRedirect("/loginForm.do");
		}
	}
}
