package com.duckG.jjim.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;

import com.duckG.DataSource;

public class JjimServiceImpl implements JjimService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

}
