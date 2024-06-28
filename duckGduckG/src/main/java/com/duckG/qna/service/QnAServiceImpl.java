package com.duckG.qna.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;

import com.duckG.DataSource;

public class QnAServiceImpl implements QnAService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

}
