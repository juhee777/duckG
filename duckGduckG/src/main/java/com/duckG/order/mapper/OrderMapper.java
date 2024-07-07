package com.duckG.order.mapper;

import java.util.List;

import com.duckG.vo.OrderVO;

public interface OrderMapper {

	List<OrderVO> OrderList(String id); // 구매목록 불러오기
	int UpdateOrder(OrderVO ovo);
	
	List<OrderVO> orderDetails(String orderNo);
	
	//구매목록 등록
	int insertOrder(OrderVO ovo);
}
