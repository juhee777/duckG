package com.duckG.member.service;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;

import com.duckG.DataSource;

public class MemberServiceImpl implements MemberService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);

}
