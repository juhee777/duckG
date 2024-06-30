package com.duckG.product.service;

import java.util.List;

import com.duckG.vo.ProductVO;
import com.duckG.vo.SearchVO;

public interface ProductService {
	
	// 제품상세
	List<ProductVO> productDetail(int pno);
	List<ProductVO> selectProduct(SearchVO svo);
	List<ProductVO> productList();
	List<ProductVO> selectCategory(String sname);

}
