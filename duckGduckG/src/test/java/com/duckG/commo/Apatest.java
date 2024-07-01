package com.duckG.commo;

import org.apache.ibatis.session.SqlSession;

import com.duckG.DataSource;
import com.duckG.product.mapper.ProductMapper;

public class Apatest {
public static void main(String[] args) {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	
}
}
