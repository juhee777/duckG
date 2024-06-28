package com.duckG.product.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;

import com.duckG.DataSource;

public class ProductServiceImpl implements ProductService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

}
