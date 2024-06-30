package com.duckG.product.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.duckG.Control;
import com.duckG.product.service.ProductService;
import com.duckG.product.service.ProductServiceImpl;
import com.duckG.vo.ProductVO;
import com.duckG.vo.SearchVO;


public class ProductForm implements Control {

	@Override
	public void exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String kw = req.getParameter("keyword");
		String category = req.getParameter("category");
		
		
		ProductService svc = new ProductServiceImpl();
		List<ProductVO> products = svc.productList();
		
		if (kw != null && !kw.trim().isEmpty()) {
            SearchVO searchVO = new SearchVO();
            searchVO.setKeyword(kw);
            products = svc.selectProduct(searchVO);
        } else if (category != null && !category.trim().isEmpty()) {
            products = svc.selectCategory(category);
        } else {
            products = svc.productList();
        }
		
		req.setAttribute("products", products);
		req.setAttribute("search", kw);
		req.setAttribute("category", category);
		
		
		req.getRequestDispatcher("search/productForm.tiles").forward(req, resp);
	}

}
