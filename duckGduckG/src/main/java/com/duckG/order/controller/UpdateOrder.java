package com.duckG.order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.order.service.OrderService;
import com.duckG.order.service.OrderServiceImpl;
import com.duckG.vo.OrderVO;

public class UpdateOrder implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int num = Integer.parseInt(req.getParameter("num"));
		int orderNo = Integer.parseInt(req.getParameter("orderNo"));
		
		System.out.println(num);
		System.out.println(orderNo);
		
		
		OrderService osv = new OrderServiceImpl();
		OrderVO ovo = new OrderVO();
		ovo.setOrderNo(orderNo);
		ovo.setOrderSta(num);
		
		
		if(osv.UpdateOrder(ovo)) {
			resp.sendRedirect("MyInfo.do");
		}else {
			resp.sendRedirect("Inquire.do");
		}
	}

}
