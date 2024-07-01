package com.duckG.order.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import com.duckG.vo.OrderVO;
import com.duckG.DataSource;
import com.duckG.order.mapper.OrderMapper;

public class OrderServiceImpl implements OrderService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);

	@Override
	public List<OrderVO> OrderList(String id) {
		// TODO Auto-generated method stub
		return mapper.OrderList(id);
	}
}
