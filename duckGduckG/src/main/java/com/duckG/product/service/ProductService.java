package com.duckG.product.service;

import java.util.List;

import com.duckG.vo.ProductVO;

public interface ProductService {
	
	// 제품상세
	List<ProductVO> productDetail(int pno);

}
