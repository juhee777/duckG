package com.duckG.product.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.duckG.product.mapper.ProductMapper;
import com.duckG.vo.ProductVO;
import com.duckG.vo.SearchVO;
import com.duckG.DataSource;

public class ProductServiceImpl implements ProductService{
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper mapper = sqlSession.getMapper(ProductMapper.class);
	
	@Override
	public List<ProductVO> productDetail(int pno) {
		// TODO Auto-generated method stub
		return mapper.productDetail(pno);
	}
	
	@Override
	public List<ProductVO> selectProduct(SearchVO svo) {
		// TODO Auto-generated method stub
		return mapper.selectProduct(svo);
	}
	
	@Override
	public List<ProductVO> productList() {
		// TODO Auto-generated method stub
		return mapper.productList();
	}
	
	@Override
	public List<ProductVO> selectCategory(String sname) {
		// TODO Auto-generated method stub
		return mapper.selectCategory(sname);
	}

	@Override
	public List<ProductVO> lastestProduct() {
		// TODO Auto-generated method stub
		return mapper.lastestProduct();
	}

	@Override
	public List<ProductVO> popularProduct() {
		// TODO Auto-generated method stub
		return mapper.popularProduct();
	}
	
	@Override
	public int productTotal(SearchVO svo) {
		// TODO Auto-generated method stub
		return mapper.productTotal(svo);
	}
	
	@Override
	public List<ProductVO> productListPaging(SearchVO search) {
		// TODO Auto-generated method stub
		System.out.println("====================="+search);
		return mapper.productListPaging(search);
	}

	@Override
	public List<String> categorList() {
		// TODO Auto-generated method stub
		return mapper.categoryList();
	}

}
