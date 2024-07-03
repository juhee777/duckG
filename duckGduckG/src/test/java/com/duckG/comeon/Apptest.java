package com.duckG.comeon;

import org.apache.ibatis.session.SqlSession;

import com.duckG.DataSource;
import com.duckG.product.mapper.ProductMapper;

public class Apptest {
public static void main(String[] args) {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	
	
	
}
}
