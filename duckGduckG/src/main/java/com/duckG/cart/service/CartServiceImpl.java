package com.duckG.cart.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;

import com.duckG.DataSource;

public class CartServiceImpl implements CartService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

}
