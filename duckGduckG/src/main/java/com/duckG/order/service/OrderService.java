package com.duckG.order.service;

import java.util.List;

import com.duckG.vo.OrderVO;


public interface OrderService {
	
	List<OrderVO> OrderList(String id);
	boolean UpdateOrder(OrderVO ovo);
	
	List<OrderVO> orderDetails(String orderNo);
	
	boolean addOrder(OrderVO ovo);
}
