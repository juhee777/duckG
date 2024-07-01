package com.duckG.cart.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.vo.CartVO;
import com.duckG.vo.MemberVO;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
//			try {
//				resp.setContentType("text/html; charset=utf-8");
//		        PrintWriter w = resp.getWriter();
//		        w.write("<script>alert('로그인좀');location.href='loginForm.do';</script>");
//		        w.flush();
//		        w.close();
//			} catch (Exception e) {
//				// TODO: handle exception
//				e.printStackTrace();
//			}
//		}
//		
//		
//		HttpSession session = req.getSession();
//		
//		MemberVO mvo = (MemberVO)session.getAttribute("member");
//		
//		if(mvo == null) {
//			resp.sendRedirect("/loginForm.do");
//		}
	}
}
