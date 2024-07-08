package com.duckG.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.order.service.OrderService;
import com.duckG.order.service.OrderServiceImpl;
import com.duckG.vo.CartVO;
import com.duckG.vo.OrderVO;

public class Pay implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String logId = (String) session.getAttribute("logId");
		resp.setContentType("text/html;charset=UTF-8");
	    PrintWriter out = resp.getWriter();
		
		if(logId == null || logId == "" || logId == "undefined") {
			out.print("<script>"
					+ "alert('로그인 후 이용해 주세요!');"
					+ "</script>");
			//out.close();
			resp.sendRedirect("loginForm.do");
		}
		
		CartService csvc = new CartServiceImpl();
		List<CartVO> cList = csvc.cartList(logId);
		
		OrderVO ovo = new OrderVO();
		OrderService osvc = new OrderServiceImpl();
		ovo.setMemberId(logId);
		
		try {
			for(CartVO cart : cList) {
				ovo.setCount(cart.getCount());
				double dis = (100 - cart.getDiscount()) * 0.01;
				ovo.setHowMuch((int)(cart.getPrice() * dis ) * cart.getCount());
				ovo.setProductNo(cart.getProductNo());
				osvc.addOrder(ovo);
			}
			out.print("<script>"
					+ "alert('결제가 완료되었습니다!');"
					+ "</script>");
			//out.close();

			csvc.emptyCart(logId);
			resp.sendRedirect("main.do");
		} catch (Exception e) {
			e.printStackTrace();
			out.print("<script>"
					+ "alert('결제 도중 문제가 발생하였습니다!');"
					+ "</script>");
			//out.close();
			resp.sendRedirect("payForm.do");
		}

	}

}
