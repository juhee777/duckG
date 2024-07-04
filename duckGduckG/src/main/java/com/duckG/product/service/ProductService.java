package com.duckG.product.service;



import java.util.List;

import com.duckG.vo.ProductVO;
import com.duckG.vo.SearchVO;

public interface ProductService {
	
	// 제품상세
	List<ProductVO> productDetail(int pno);
	List<ProductVO> selectProduct(SearchVO svo);
	List<ProductVO> productList();
	List<ProductVO> productListPaging(SearchVO search);
	int productTotal(SearchVO svo);
	List<ProductVO> selectCategory(String sname);

	//카테고리 뽑아오기
	List<String> categorList(); 
	List<ProductVO> lastestProduct();
	List<ProductVO> popularProduct();
}
