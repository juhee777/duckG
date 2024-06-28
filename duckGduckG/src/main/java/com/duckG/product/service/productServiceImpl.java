package com.duckG.product.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.productMapper;

import com.duckG.DataSource;

public class productServiceImpl implements productService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	productMapper mapper = sqlSession.getMapper(productMapper.class);

}
