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

public class CartForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		//String id = req.getParameter("memberId");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("logId");
		
		if (id != null) {
			CartService cso = new CartServiceImpl();

			List<CartVO> list = cso.cartList(id);

			req.setAttribute("cartList", list);
			req.getRequestDispatcher("cart/cartForm.tiles").forward(req, resp);
			
		} else {
			try {
				resp.setContentType("text/html; charset=utf-8");
		        PrintWriter w = resp.getWriter();
		        w.write("<script>alert('로그인좀');location.href='loginForm.do';</script>");
		        w.flush();
		        w.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		

	}

}
