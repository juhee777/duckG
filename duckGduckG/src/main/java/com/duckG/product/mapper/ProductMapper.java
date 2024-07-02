package com.duckG.product.mapper;

import java.util.List;

import com.duckG.vo.ProductVO;
import com.duckG.vo.SearchVO;

public interface ProductMapper {
	List<ProductVO> productList();
	
	List<ProductVO> productListPaging(SearchVO svo);
	int productTotal(SearchVO svo);
	
	
	List<ProductVO> selectProduct(SearchVO svo); //조회
	List<ProductVO> productDetail(int pno);
	List<ProductVO> selectCategory(String cname);

}
