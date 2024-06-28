package com.duckG.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;
import com.duckG.vo.ProductVO;
import com.duckG.DataSource;

public class ProductServiceImpl implements ProductService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productDetail(int pno) {
		// TODO Auto-generated method stub
		return mapper.productDetail(pno);
	}

}
