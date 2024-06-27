package com.duckG.product.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.productMapper;

import co.yedam.common.DetaSource;

public class productServiceImpl implements productService{
	SqlSession sqlSession = DetaSource.getInstance().openSession(true);
	productMapper mapper = sqlSession.getMapper(productMapper.class);

}
