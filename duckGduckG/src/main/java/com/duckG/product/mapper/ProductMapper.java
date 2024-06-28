package com.duckG.product.mapper;

import java.util.List;

import com.duckG.vo.ProductVO;

public interface ProductMapper {
	List<ProductVO> productList();
	ProductVO selectProduct(int productNo); //조회
}
