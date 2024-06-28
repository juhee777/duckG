package com.duckG.product.mapper;

import java.util.List;

import com.duckG.vo.ProductVO;

public interface ProductMapper {
	List<ProductVO> productDetail(int pno);
}
