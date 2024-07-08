package com.duckG.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.duckG.Control;
import com.duckG.cart.service.CartService;
import com.duckG.cart.service.CartServiceImpl;
import com.duckG.member.service.MemberService;
import com.duckG.member.service.MemberServiceImpl;
import com.duckG.vo.CartVO;
import com.duckG.vo.MemberVO;

public class PayForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		String logId = (String)session.getAttribute("logId");
		
		MemberService msvc = new MemberServiceImpl();
		MemberVO mvo = msvc.updateMemberfind(logId);
		CartService csvc = new CartServiceImpl();
		List<CartVO> cvo = csvc.cartList(logId);
		int totalPrice = 0;
		int disPrice = 0;
		for(CartVO vo : cvo) {
			int price = vo.getPrice();
			double discount = (100 - vo.getDiscount()) * 0.01;
			int resultPrice = (int)(price * discount);
			disPrice += (int)(price * vo.getDiscount() * 0.01); 
			totalPrice += resultPrice;
		}
		
		req.setAttribute("mvo", mvo);
		req.setAttribute("cvo", cvo);
		req.setAttribute("totalPrice", totalPrice);
		req.setAttribute("disPrice", disPrice);
	
		req.getRequestDispatcher("pay/payForm.tiles").forward(req, resp);

	}

}
